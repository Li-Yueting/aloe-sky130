'''
Save constraint and performances of population to text files
Update and save HOF
Update and save statistics
'''

from __future__ import division
import argparse
import os
import sys
try:
    import cPickle as pickle
except:
    import pickle
import pandas as pd
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea

def load_population(db_pop):
    fi = open(db_pop, 'rb')
    pop = pickle.load(fi)
    fi.close()
    return pop

def write_constraints(pop, fcstr):
    cstr_df = pd.DataFrame([list(ind) for ind in pop])
    cstr_df.columns = ip.all_nets
    cstr_df.to_csv(fcstr, sep='\t', index=False)

def write_performances(pop, fperf):
    perf_df = pd.DataFrame([ind.fitness.values for ind in pop], columns=ip.perf)
    perf_df.columns = ip.perf
    perf_df.to_csv(fperf, sep='\t', index=False, float_format='%4.3f')

def save_statistics(db_logbook, db_hof, pop, gen):
    record = ea.stats.compile(pop)
    if gen > 0:
    	# Read logbook
        fin = open(db_logbook, 'rb')
        logbook = pickle.load(fin)
        fin.close()
        # Update logbook
        logbook.record(gen=gen, **record)
        fo = open(db_logbook, 'wb')
        pickle.dump(logbook, fo)
        fo.close()

        # Read HOF
        fin = open(db_hof, 'rb')
        hof = pickle.load(fin)
        fin.close()

        # Update HOF
        hof.update(pop)
        fo = open(db_hof, 'wb')
        pickle.dump(hof, fo)
        fo.close()

    else:
    	# Write logbook
        ea.logbook.record(gen=gen, **record)
        fo = open(db_logbook, 'wb')
        pickle.dump(ea.logbook, fo)
        fo.close()

        # Write hall of fame
        ea.hof.update(pop)
        fo = open(db_hof, 'wb')
        pickle.dump(ea.hof, fo)
        fo.close

if __name__ == '__main__':

    print
    print ('=============================================================')
    print ('                        By save.py                           ')
    print ('-------------------------------------------------------------')

    parser = argparse.ArgumentParser()
    parser.add_argument('-gen', type=int)
    parser.add_argument('-type_pop_out')
    args = parser.parse_args()
    gen_num = args.gen
    if not args.type_pop_out == None:
        db_pop = 'pop_{}.db'.format(args.type_pop_out)

    # set file paths
    db_population = os.path.join(ip.pnr_dir, db_pop)
    db_logbook = os.path.join(ip.pnr_dir, 'logbook.db')
    db_hof = os.path.join(ip.pnr_dir, 'hof.db')
    if not args.type_pop_out == 'out':
        fconstraint = '{}cstr{}.txt'.format(ip.cstrout_dir, gen_num)
        fperformance = '{}perf{}.txt'.format(ip.perfout_dir, gen_num)
    else:
        fconstraint = '{}cstr_streamed.txt'.format(ip.cstrout_dir)
        fperformance = '{}perf_streamed.txt'.format(ip.perfout_dir)
    # write and
    population = load_population(db_population)
    write_constraints(population, fconstraint)
    write_performances(population, fperformance)
    save_statistics(db_logbook, db_hof, population, gen_num)
