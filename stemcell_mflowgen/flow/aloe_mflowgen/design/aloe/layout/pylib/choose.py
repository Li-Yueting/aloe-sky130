'''
Second-pass evaluation with the normalization array now calculated.
Saves the population in ungrouped objectives.
'''
from __future__ import division
import argparse
import os
try:
    import cPickle as pickle
except:
    import pickle
import numpy as np
from numpy.linalg import norm
import pandas as pd
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea
from aloe.layout.pnr.cstr import write_cstr
from aloe.config.config import group

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
def load_cstr_pos(fcstr_pos):
    '''
    counterpart of write_cstr_pos in set_objectives
    '''
    df = pd.read_csv(fcstr_pos, sep='\t', dtype={'start': int, 'end': int})
    return df

def load_population(fpop):
    '''
    function: read .db population and check fitness values
    '''
    fin = open(fpop, 'rb')
    population = pickle.load(fin)
    fin.close()
    if False in [ind.fitness.valid for ind in population]:
        print ('ERROR: Population not evaluated')
        return None
    else:
        return population

def load_norm_array(fnorm):
    return np.load(fnorm)[0,:], np.load(fnorm)[1,:]

def reevaluate(population, cstr_pos, norm_array=np.array([]), utopian=np.array([]), group=True, normp=2):
    '''
    population: individuals who has already been evaluated by examine.py
    cstr_pos: DataFrame of csontraint positions.
    norm_array: np.array([]) of normalization array
    group: boolean
    function: reevaluate input population
    '''
    if group:
        ncstr = len(cstr_pos.index)
        obj_grouped = np.zeros((len(population), ncstr))
        pop_group = ea.toolbox.population_normalized(n=len(population))
        # The only way to write constraints....
        for index0, individual0 in enumerate(population):
            for index1, constraint in enumerate(list(individual0)):
                pop_group[index0][index1] = constraint

        for idx, individual in enumerate(population):
            for idy, row in df_cstr_pos.iterrows():
            	obj_grouped[idx, idy] = norm(
                        (individual.fitness.values[row['start']:row['end']]-utopian[row['start']:row['end']])/norm_array[row['start']:row['end']], normp)

            ##toolbox.evaluate_group(individual, fexpr, np.ones(len(ip.perf)))
            pop_group[idx].fitness.values = obj_grouped[idx, :]
        return pop_group
    else:
        return population

def write_constraints(population, type_pop='old'):

    for idx, individual in enumerate(population):
        net_weights = list(individual)
        cstr_df = pd.DataFrame({'name': ip.all_nets, 'weight': net_weights})
        if type_pop == 'old':
            cstr_file_path = os.path.join(
                ip.cstr_old_dir, 
                '{}{}.txt'.format(ip.cstr, str(idx).zfill(ip.run_num_len)))
            #print 'DEBUG: OLD'
        elif type_pop == 'out':
            cstr_file_path = os.path.join(
                ip.cstr_hof_dir,
                '{}{}.txt'.format(ip.cstr, str(idx).zfill(ip.run_num_len)))

        write_cstr('net', cstr_df, cstr_file_path)

def save_population(fpop, population, group):
    fin = open(fpop, 'wb')
    pickle.dump(population, fin)
    fin.close()

def match_individuals(pop, pop_group, group=True):
    '''
    pop:      population with raw objectives as fintess values
    pop_group population with grouped and noramlized objectives functions
    function: after having selected individuals based on group objectives, match
              pop_group back to pop, so that the individual objectives are preserved
              and saved.
    note:     this is a stupid fix that allows us to not touch deap.tools.emo and force
              it to return individual indices.
              Also the selection is not in order between the survivors and the input pop_group
    '''
    if group:
        list_individuals = []
        start = 0
        for individual in pop_group:
            for idx in range(len(pop)):
                if individual == pop[idx]:
                    list_individuals.append(pop[idx])
                    break
        return list_individuals
    else:
    	return pop_group


if __name__ == '__main__':
    
    parser = argparse.ArgumentParser()
    parser.add_argument('-gen', type=int)
    parser.add_argument('-type_pop_in')
    parser.add_argument('-type_pop_out')
    args = parser.parse_args()
    gen = args.gen
    if args.type_pop_in == 'final':
        fpop = os.path.join(ip.pnr_dir, 'pop_final.db')
        pop = load_population(fpop)
    else:
        fpop_old = os.path.join(ip.pnr_dir, 'pop_old.db')
        fpop_new = os.path.join(ip.pnr_dir, 'pop_new.db')
        # pop = load_population(fpop_old) + load_population(fpop_new)
        pop = load_population(fpop_new)
        pop += load_population(fpop_old)

    # Shared input
    fnorm = os.path.join(ip.pnr_dir, 'norm_arr.npy')
    fcstr_pos = os.path.join(ip.pnr_dir, 'cstr_pos.df')

    # Process
    norm_arr, utopian = load_norm_array(fnorm)
    df_cstr_pos = load_cstr_pos(fcstr_pos)
    pop_group = reevaluate(pop, df_cstr_pos, norm_array=norm_arr, utopian=utopian, group=group)
    if not args.type_pop_out == 'out':
        survivors = ea.toolbox.select(pop_group, ip.pop_size)
    else: 
        survivors = ea.toolbox.select(pop_group, ip.nout)
        
    pop_save = match_individuals(pop, survivors)
    write_constraints(pop_save, type_pop=args.type_pop_out)
    fpop_out = os.path.join(ip.pnr_dir, 'pop_{}.db'.format(args.type_pop_out))
    save_population(fpop_out, pop_save, group)
