import os
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import style
try:
    import cPickle as pickle
except:
    import pickle
import aloe.layout.pnr.def_ip as ip
    

def load_logbook(dblog):
    '''
    dblog: pickled logbook object that contains statistics for all generations
    * stats were defined in pnr.ea
    '''
    fin = open(dblog, 'r')
    logbook = pickle.load(fin)
    fin.close()
    return logbook


def plot_statistics(logbook, hof=None):
    '''
    logbook: deap Logbook object
    statistics: refer to pnr.ea for the logged on ones
    reference: https://gist.github.com/DMTSource/93b36f152692f8ae62d2e47af25e7520
    '''
    style.use('seaborn-talk')

    gen = logbook.select('gen')
    fit_avgs = np.array(logbook.select('avg'))
    fit_stds = np.array(logbook.select('std'))
    fit_mins = np.array(logbook.select('min'))
    fit_maxs = np.array(logbook.select('max'))
    
# =============================================================================
#     # Fat figure
#     fig = plt.figure(figsize=(20, 5), facecolor='w')
#     ax1 = plt.subplot2grid((1,4), (0,0))
#     ax2 = plt.subplot2grid((1,4), (0,1))
#     ax3 = plt.subplot2grid((1,4), (0,2))
#     ax4 = plt.subplot2grid((1,4), (0,3))
# =============================================================================
    
    # Square figure
    fig = plt.figure(figsize=(12, 8), facecolor='w')
    ax1 = plt.subplot2grid((2,2), (0,0))
    ax2 = plt.subplot2grid((2,2), (1,0), sharex=ax1)
    ax3 = plt.subplot2grid((2,2), (0,1))
    ax4 = plt.subplot2grid((2,2), (1,1), sharex=ax3)
    
    for gen in range(fit_avgs.shape[1]):
        # Theses are the slice across generation for the same objective
        ax1.plot(gen, fit_avgs)
       # handles, labels = ax1.get_legend_handles_labels()
        #ax1.set_xlabel('Generation')
    ax1.set_ylabel('Average')
    plt.grid()
        
    for obj in range(fit_stds.shape[1]):
        ax2.plot(gen, fit_stds)
        #ax2.set_xlabel('Generation')
    ax2.set_ylabel('Std')
    plt.grid(True)
    handles, labels = ax2.get_legend_handles_labels()
        
    for obj in range(fit_mins.shape[1]):
        ax3.plot(gen, fit_mins)
        #ax3.set_xlabel('Generation')
    ax3.set_ylabel('Min')
    plt.grid()
        
    for obj in range(fit_maxs.shape[1]):
        ax4.plot(gen, fit_maxs)
        #ax4.set_xlabel('Generation')
    ax4.set_ylabel('Max')
    plt.grid()
     

    #print type(('d0', 'd1', 'd2'))
    fig.legend(handles, ('d0', 'd1', 'd2'),  fontsize=8)
    plt.tight_layout()
    
    plt.savefig('{}{}_stats_pop={}_pmut={}_pcx={}.png'\
            .format(ip.fig_dir, ip.blk_name, ip.pop_size, \
                    ip.mut_prob, ip.cx_prob), dpi=300)

    plt.show()

#    stats = ['']*len(logbook.header)
#    for idx, s in enumerate(logbook.header):
#        stats[idx] = logbook.select(s)
#    print stats

if __name__ == '__main__':
    logbook = load_logbook(os.path.join(ip.pnr_dir, 'logbook.db'))
    #print logbook[0]
    plot_statistics(logbook)
# =============================================================================
# # TODO: Adjust for multi-objective
# fig, ax1 = plt.subplots()
# line1 = ax1.plot(gen, fit_mins, 'b-', label='Minimum Fitness')
# ax1.set_xlabel('Generation')
# ax1.set_ylabel('Fitness', color='b')
# for tl in ax1.get_yticklabels():
#     tl.set_color('b')
# 
# ax2 = ax1.twinx()
# line2 = ax2.plot(gen, fit_avgs, 'r-', label='Average Fitness')
# ax2.set_ylabel('Fitness', color='r')
# for tl in ax2.get_yticklabels():
#     tl.set_color('r')
# 
# lns = line1 + line2
# labs = [l.get_label() for l in lns]
# ax1.legend(lns, labs, loc='center right')
# 
# plt.show()
# =============================================================================
