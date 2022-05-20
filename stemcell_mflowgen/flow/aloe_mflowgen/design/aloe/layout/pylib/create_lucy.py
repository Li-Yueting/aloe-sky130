from __future__ import division
import argparse
import os
try:
    import cPickle as pickle
except:
    import pickle
import pandas as pd
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea
from aloe.layout.pnr.cstr import write_cstr

# cPickle is 1000x faster than pickle, but has limited functionality
# So use cPickle unless an error is raised.

# Create initial population: lucy
# Net weights of the first populations are written to /home/users/xingyuni/ee372/repo.git/aloe/layout/engine/cstr_old folder

parser = argparse.ArgumentParser()
parser.add_argument('-type_cstr_out')
args = parser.parse_args()

pop_old = ea.toolbox.population(n=ip.pop_size)

# Check if fitness values are invalid
if True in [ind.fitness.valid for ind in pop_old]:
    print ('ERROR: Some layout is evaluated before lucy')
else:
    print ('SUCCESS: Initial population lucy.')

df_cstr_map = pd.DataFrame()
for idx in range(ip.pop_size):
    net_weights = list(pop_old[idx])
    df = pd.DataFrame({'name': ip.all_nets, 'weight': net_weights})   
    df_cstr_map = df_cstr_map.append(df.transpose()[1:2], ignore_index=True)
    cstr_file_path = ip.cstr_old_dir + ip.cstr + str(idx).zfill(ip.run_num_len) + '.txt'
    write_cstr(ip.obj, df, cstr_file_path)
    print ('Constraint file wriiten to '+ cstr_file_path)
#fo = open('{}cstr_{}.db'.format(ip.pnr_dir, ), 'w')
fo = open(os.path.join(ip.pnr_dir, 'cstr_{}.db'.format(args.type_cstr_out)), 'wb')
pickle.dump(pop_old, fo)
fo.close()
