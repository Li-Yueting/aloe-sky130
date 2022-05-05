import os
import matplotlib.pyplot as plt
from matplotlib import style
try:
    import cPickle as pickle
except:
    import pickle
import aloe.layout.pnr.def_ip as ip


def plot_hof(hof):
    style.use('seaborn-talk')
    fig = plt.figure(figsize=(8,6), facecolor='w')
    fig.plot([ind.fitness.values[0] for ind in hof],
             [ind.fitness.values[1] for ind in hof], 'o-')
    plt.grid()
    plt.tight_layout()
    plt.savefig('{}{}_hof_pop={}_pmut={}_pcx={}.png'.format(
            ip.fig_dir, ip.blk_name, ip.pop_size, ip.mut_prob, ip.cx_prob), dpi=300)
    plt.show()

if __name__ == '__main__':    
    fin = open(os.path.join(ip.pnr_dir, 'hof.db'))
    hof = pickle.load(fin)
    fin.close()
    plot_hof(hof)