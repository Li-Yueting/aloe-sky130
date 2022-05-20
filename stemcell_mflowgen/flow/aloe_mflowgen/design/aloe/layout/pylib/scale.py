from __future__ import division
import pandas as pd
import os
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea
try:
    import cPickle as pickle
except:
    import pickle


def update_hof(gen_num):

    fi = open(os.path.join(ip.pnr_dir, 'pop_old.db'), 'r')
    pop_old = pickle.load(fi)
    fi.close()

    fi = open(os.path.join(ip.pnr_dir, 'pop_new.db'), 'r')
    pop_new = pickle.load(fi)
    fi.close()


    if gen_num > 0:
    	# Read logbook
        fin = open(os.path.join(ip.pnr_dir, 'logbook.db'), 'r')
        logbook = pickle.load(fin)
        fin.close()
        # Update logbook
        logbook.record(gen=gen_num, **record)
        fo = open(os.path.join(ip.pnr_dir, 'logbook.db'), 'w')
        pickle.dump(logbook, fo)
        fo.close()

        # Read HOF
        fin = open(os.path.join(ip.pnr_dir, 'hof.db'), 'r')
        hof = pickle.load(fin)
        fin.close()

        # Update HOF
        hof.update(pop_old+pop_new)
        fo = open(os.path.join(ip.pnr_dir, 'hof.db'), 'w')
        pickle.dump(hof, fo)
        fo.close()
        return hof

    else:
    	# Write logbook
        ea.logbook.record(gen=gen_num, **record)
        fo = open(os.path.join(ip.pnr_dir, 'logbook.db'), 'w')
        pickle.dump(ea.logbook, fo)
        fo.close()

        # Write hall of fame
        ea.hof.update(pop_old+pop_new)
        fo = open(os.path.join(ip.pnr_dir, 'hof.db'), 'w')
        pickle.dump(ea.hof, fo)
        fo.close
        return ea.hof

def cal_norm_arr(nobj, hofers, fitness_type='FitnessMin'):
    '''
    nobj: Number of objectives, before grouping
    hofers: HallOfFame individuals
    utopian: the ideal point whose individual objectives are dominating
    nadir: the point with which forms a hypercube with the uptopian point,
           and the exreme points on the pareto frontier
    TODO: different fitness type read in from ea. Currently FitnessMin
    '''
    utopian = np.full(nobj, np.inf)
    nadir = np.zeros(nobj)
    idx_paretos = np.zeros(nobj)

    for idx in range(nobj):
        for idy, individual in enumerate(hofers):
            if individual.fitness.values[idx] < utopian[idx]:
                idx_paretos[idx] = idy
                utopian[idx] = individual.fitness.values[idx]
    for idx in range(nobj):
        for idy in idx_paretos:
            if hofers[int(idy)].fitness.values[idx] > nadir[idx]:
                nadir[idx] = hofers[int(idy)].fitness.values[idx]
    return nadir-utopian, utopian

if __name__ == '__main__':
    #==============================================================================
    # Get current generation
    #==============================================================================
    gen_num = int(os.environ['gen'])
    nobj = len(ip.perf)
    hofers = update_hof(gen_num)
    norm_arr, utopian = cal_norm_arr(nobj, hofers)
    print norm_arr
    np.save(os.path.join(ip.pnr_dir, 'norm_arr.np'), np.array([norm_arr, utopian])


