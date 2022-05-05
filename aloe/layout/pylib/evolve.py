from __future__ import division
import argparse
import os
try:
    import cPickle as pickle
except:
    import pickle
import pandas as pd
from deap import algorithms
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea
from aloe.layout.pnr.cstr import write_cstr
from ..settings import pnr_dir
#==============================================================================
# Note: Must evaluate individuals first before selection
# Note: To avoid iterable issues, DO NOT make the attribute of type sequence
# Note: Updating from deap 1.0.0 to deap 1.0.2 becuase of bugs...specifically sortNonDominated
# Only takes 1 argument in the latest version
#
# The execution sequence is
#     1. OPT randomly creates the first generation of genotypes
#     2. Innovus lays out the population
#     3. OPT grabs the first-gen phenotypes and evaluate fitness
#     4. OPT creates the next generation of genotypes
# 
#==============================================================================


#==============================================================================
# Set GA operatoers
#==============================================================================

parser = argparse.ArgumentParser()
parser.add_argument('-gen', type=int)
parser.add_argument('-type_pop_in')
parser.add_argument('-type_cstr_out')
args = parser.parse_args()
gen = args.gen

fi = open(os.path.join(pnr_dir, 'pop_{}.db'.format(args.type_pop_in)), 'rb')
pop_old = pickle.load(fi)
fi.close()
#---
#pop_old=ea.toolbox.population(n=ip.pop_size)
#
#for idx in range(ip.pop_size):
#    cstr_file_path = ip.cstr_old_dir + ip.cstr + str(idx+1).zfill(ip.run_num_len) + '.txt'
#    df = read_cstr(ip.obj,ip.cstr, cstr_file_path)
#    pop_old[idx] = creator.Individual(map(int, df['weight']))
#---
#==============================================================================
# EVALUATE: Read expression and calculate performance
#==============================================================================
#ea.toolbox.evaluate(pop_old, ip.expr_old_dir)
if False in [ind.fitness.valid for ind in pop_old]:
    print ('ERROR: Old population not evaluated in by examine.py in generation {}'.format(str(gen_num-1)))
else:
    print('pass')
    pass
#==============================================================================
# GENERATE MATING POOL: (mu+lambda)
#==============================================================================
# pop_new = map(ea.toolbox.clone, ea.toolbox.select(pop_old, len(pop_old)))
# # print(pop_new)
# for ind in pop_new:
#     print(ind)
#     del ind.fitness.values

# if True in [ind.fitness.valid for ind in pop_new]:
#     print ('ERROR: New population performance not deleted in evolve.py')
# else:
#     print('pass')
#     pass

pop_new = ea.toolbox.select(pop_old, len(pop_old))

#==============================================================================
# CROSSOVER + MUTATION
#==============================================================================
print(ea.toolbox.cx_prob)
print(ea.toolbox.mut_prob)

pop_new = algorithms.varAnd(pop_new, ea.toolbox, ea.toolbox.cx_prob, ea.toolbox.mut_prob)
print(pop_new)


for idx, ind in enumerate(pop_new):
    for idy, chrom in enumerate(ind):
        pop_new[idx][idy] = int(round(chrom))

# TODO: round might not be the best operation. Neet to check mutPolynomialBounded
#df_cstr_map = pd.DataFrame()
for idx in range(len(pop_new)):
    net_weights = list(pop_new[idx])
    df = pd.DataFrame({'name': ip.all_nets, 'weight': net_weights})   
    cstr_file_path = ip.cstr_new_dir + ip.cstr + str(idx).zfill(ip.run_num_len) + '.txt'
    write_cstr('net', df, cstr_file_path)
    print ('Constraint file wriiten to '+ cstr_file_path)
    #df_cstr_map = df_cstr_map.append(df.transpose()[1:2], ignore_index=True)
#df_cstr_map.columns=ip.all_nets
#df_cstr_map.index+=1

#==============================================================================
# SAVE pop_new
#==============================================================================
fo = open(os.path.join(pnr_dir, 'cstr_{}.db'.format(args.type_cstr_out)), 'wb')
pickle.dump(pop_new, fo)
fo.close()
