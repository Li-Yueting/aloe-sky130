'''
Associate the constraint and expression with population

'''
from __future__ import division
import argparse
import os
import sys
try:
    import cPickle as pickle
except:
    import pickle
import numpy as np
import aloe.layout.pnr.def_ip as ip
from aloe.layout.pnr.ea import toolbox
#from aloe.layout.pylib.proc_inputs import proc_inputs
#from ..settings import pnr_dir


def gen_stage(gen_num, ngen):
    '''
    Function: determine stage of evolution depending on the current generation #.
    '''

    if int(gen_num) == 0:
        stage = 'original'
    elif 0 < int(gen_num) < ngen:
        stage = 'evolving'
    elif int(gen_num) == ngen:
        stage = 'final'
    else:
        print ('ERROR: Generation number out of range.')
        print ('       Valid range is [0, {}]'.format(ngen))
        stage = None
    return stage

def set_expr_path(stage, idx, leng, expr):
    '''
    Function: set the file path where the expression file will be saved.
    '''
    if stage == 'evolving':
        fexpr = os.path.join(ip.expr_new_dir, '{}{}.{}'.format(ip.blk_name, str(idx).zfill(leng), expr))
    elif stage == 'original':
        fexpr = os.path.join(ip.expr_old_dir, '{}{}.{}'.format(ip.blk_name, str(idx).zfill(leng), expr))
    elif stage == 'final':
        fexpr = os.path.join(ip.expr_new_dir, '{}{}.{}'.format(ip.blk_name, str(idx).zfill(leng), expr))
    else:
        pass
    return fexpr

def load_cstr(stage):
    if stage == 'evolving':
        fin = open(os.path.join(ip.pnr_dir, 'cstr_new.db'), 'r')
        population = pickle.load(fin)
        fin.close()
    elif stage == 'original':
        fin = open(os.path.join(ip.pnr_dir, 'cstr_old.db'), 'r')
        population = pickle.load(fin)
        fin.close()
    elif stage == 'final':
        fin = open(os.path.join(ip.pnr_dir, 'cstr_new.db'), 'r')
        population = pickle.load(fin)
        fin.close()
    else:
        pass
    return population

def bind(cstr, individual):
    for idx in range(len(cstr)):
        individual[idx] = cstr[idx]

def save_pop(stage, population):
    if stage == 'evolving':
        fo = open(os.path.join(ip.pnr_dir, 'pop_new.db'), 'w')
        pickle.dump(population, fo)
        fo.close()
    elif stage == 'original':
        fo = open(os.path.join(ip.pnr_dir, 'pop_old.db'), 'w')
        pickle.dump(population, fo)
        fo.close()
    elif stage == 'final':
        fo = open(os.path.join(ip.pnr_dir, 'pop_new.db'), 'w')
        pickle.dump(population, fo)
        fo.close()
    else:
        pass
def cal_norm_arr(nobj, hofers, fitness_type='FitnessMinMulti'):
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
    return (nadir-utopian, utopian)


if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument('-gen', type=int)
    parser.add_argument('-type_cstr_in')
    parser.add_argument('-type_pop_out')
    args = parser.parse_args()
    gen = args.gen

    fnorm = os.path.join(ip.pnr_dir, 'norm_arr.npy')
    # Load data
    # print 'DEBUG: gen_num = {}'.format(gen)
    stage = gen_stage(gen, toolbox.ngen)
    # print 'DEBUG: stage = {}'.format(stage)
    # cstr_pop = load_cstr(stage)
    # Load constraints
    fin = open(os.path.join(ip.pnr_dir, 'cstr_{}.db'.format(args.type_cstr_in)), 'rb')
    cstr = pickle.load(fin)
    fin.close()

    # print 'DEBUG: cstr {}'.format(cstr)
    # print 'DEBUG: gen {}'.format(gen)
    # print 'DEBUG: type_cstr_in {}'.format(args.type_cstr_in)

    # Initalize population


    population = toolbox.population(n=ip.pop_size)
    for idx, individual in enumerate(population):
        bind(cstr[idx], individual)
    

    # First-pass evaluation & saving
    # Normalized and grouped evaluation will be done after offspring is generated
    
    

    for idx, individual in enumerate(population):
        # print(individual)
        # print(individual.fitness.valid)
        if not individual.fitness.valid:
            fexpr = set_expr_path(stage, idx, ip.run_num_len, 'nl')
            # print(fexpr)
            toolbox.evaluate(individual, fexpr)



    # print (population)
    # print (ip.perf)
    norm_arr, utopian = cal_norm_arr(len(ip.perf), population)
    np.save(fnorm, np.array([norm_arr, utopian]))
    # print 'DEBUG: scalar vector = {}'.format(norm_arr.shape)
    # print 'DEBUG: utopian = {}'.format(utopian.shape)
    # print 'DEBUG stacked = {}'.format(np.array([norm_arr, utopian]).shape)
   # save_pop(stage, population)
    fo = open(os.path.join(ip.pnr_dir, 'pop_{}.db'.format(args.type_pop_out)), 'wb')
    pickle.dump(population, fo)
    fo.close()