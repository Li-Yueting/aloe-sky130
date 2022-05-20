from __future__ import division
try:
    import cPickle as pickle
except:
    import pickle
import pandas as pd
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea
from aloe.layout.pnr.opt import maxgen
from aloe.layout.pnr.cstr import write_cstr

print
print '============================================================='
print '                      By dominators.py                      '
print '-------------------------------------------------------------'

def uniqify(population):
    _seen = {}
    _result = []
    for individual in population:
        if tuple(individual) in _seen:
            continue
        else:
            _seen[tuple(individual)] = 1
            _result.append(individual)
    return _result

# Read the last performance file
lastgen = maxgen(ip.perfout_dir) # Use this in case ip.ngen is not reached
perf_file = '{}perf{}.txt'.format(ip.perfout_dir, lastgen)
perf_df = pd.read_csv(perf_file, sep='\t')

# Load the old population
fin = open('{}pop_old.db'.format(ip.pnr_dir), 'r')
population = pickle.load(fin)
fin.close()

# Select output population that is unique
population = uniqify(population)
pop_out = ea.toolbox.select(population, ip.nout)

# Write out constraints
df = pd.DataFrame()
for idx, individual in enumerate(pop_out):
    _df = pd.DataFrame({'name': ip.all_nets, 'weight': individual})
    df = df.append(_df.transpose()[1:2], ignore_index=True)
cstr_path = '{}cstr_best.txt'.format(ip.cstrout_dir)
df.columns = ip.all_nets
write_cstr(ip.obj, df, cstr_path)
