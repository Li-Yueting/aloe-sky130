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
from aloe.layout.pnr.opt import maxgen
from aloe.layout.pnr.cstr import write_cstr
from aloe.layout.pylib.save import load_population
from aloe.layout.pylib.choose import save_population

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


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-gen', type=int)
    parser.add_argument('-type_pop_in')
    parser.add_argument('-type_pop_out')
    args = parser.parse_args()
    gen_num = args.gen
    if not args.type_pop_in == None:
        db_pop_in = os.path.join(ip.pnr_dir, 'pop_{}.db'.format(args.type_pop_in))
    if not args.type_pop_out == None:
        db_pop_out = os.path.join(ip.pnr_dir, 'pop_{}.db'.format(args.type_pop_out))

    pop_in = load_population(db_pop_in)
    pop_out = uniqify(pop_in)
    save_population(db_pop_out, pop_out, group=False)
    print (len(pop_out))
    # print
    
    # list_cstr = []
    # for ind in pop_out:
    #     list_cstr.append(ind[:])
    # print set(list_cstr)
    # #print type(pop_out[0][:])
