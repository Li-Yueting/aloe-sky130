from deap import base, tools, creator
import numpy
import random
random.seed(0)
import def_ip as ip
from evaluate import eval_sa_latch_pmos_full_bk
#==============================================================================
# Determine weights for NSGAII 
#==============================================================================
def gen_wgt(perf_type):
    wgt_lst = [None]*len(perf_type)
    for idx, obj in enumerate(perf_type):
        if obj.lower() in ['min', 'minimize']:
            wgt_lst[idx] = -1.0
        elif obj.lower() in ['max', 'maximize']:
            wgt_lst[idx] = 1.0
        else:
            print 'Invalid performance type. Please check your def_ip.py.'
            print 'Available options are: {min, max}'
    return tuple(wgt_lst)    # This runs faster and the code is cleaner

#==============================================================================
# Define GA operators
#==============================================================================

toolbox=base.Toolbox()
creator.create("FitnessMinMulti", base.Fitness, weights=(gen_wgt(ip.perf_type)))
creator.create("FitnessMin", base.Fitness, weights=(gen_wgt(ip.perf_group_type)))
creator.create("Individual", list,fitness=creator.FitnessMinMulti)
creator.create("Individual_Normalized", list,fitness=creator.FitnessMin)

toolbox.register("attr_int", random.randint, ip.nw_min, ip.nw_max)
toolbox.register("individual", tools.initRepeat, creator.Individual, toolbox.attr_int, ip.nnets)
# toolbox.register("individual", tools.initRepeat, creator.Individual, toolbox.attr_int, 13)
toolbox.register("individual_normalized", tools.initRepeat, creator.Individual_Normalized, toolbox.attr_int, ip.nnets)
toolbox.register("population", tools.initRepeat, list, toolbox.individual)
toolbox.register("population_normalized", tools.initRepeat, list, toolbox.individual_normalized)

toolbox.register("evaluate", eval_sa_latch_pmos_full_bk)
#toolbox.register("evaluate_group", eval_group)
toolbox.register("mate", tools.cxSimulatedBinaryBounded, low=ip.nw_min, up=ip.nw_max, eta=ip.eta)
toolbox.register("mutate", tools.mutPolynomialBounded, eta=ip.eta, low=ip.nw_min, up=ip.nw_max, indpb=1.0/ip.nnets)
toolbox.register("select", tools.selNSGA2)

toolbox.pop_size    = ip.pop_size
toolbox.ngen        = ip.ngen
toolbox.mut_prob    = ip.mut_prob
toolbox.cx_prob     = ip.cx_prob

#==============================================================================
# Statistics
#==============================================================================
stats = tools.Statistics(key=lambda ind:ind.fitness.values)
stats.register("avg", numpy.mean, axis=0)
stats.register("std", numpy.std, axis=0)
stats.register("min", numpy.min, axis=0)
stats.register("max", numpy.max, axis=0)

#==============================================================================
# Logbook
#==============================================================================
logbook = tools.Logbook()
logbook.header = ['gen'] + (stats.fields)

#==============================================================================
# Hall of Fame
#==============================================================================
nhof = max(ip.nout, len(ip.perf))
hof = tools.HallOfFame(nhof)
