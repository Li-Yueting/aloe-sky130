from __future__ import division
import os
import matplotlib.pyplot as plt
import matplotlib.colors as colors
from matplotlib import style
import numpy as np
import pandas as pd
import aloe.layout.pnr.def_ip as ip
from aloe.layout.pylib.perf import reference_pt, hypervol_c, pareto_2d
from aloe.layout.pnr.opt import maxgen
from aloe.layout.third.pylib.pyhv import hypervolume
# from aloe.layout.pylib.plot_settings import set_plot_slides

# Future modifications
os_gen = 0

#==============================================================================
# Load and data
#==============================================================================


# Extract largest available generation
ngen = maxgen(ip.perfout_dir)
generations = range(os_gen, os_gen+ngen+1)  

#==============================================================================
# Set plot styles
#==============================================================================
#seaborn.set_style("whitegrid")
#seaborn.set_context('talk')
style.use('seaborn-talk')
gradient = np.linspace(0, 1, num=ngen+1, endpoint=True, dtype=float)

fall_colors = [(1, level, 0) for level in gradient]
# Add white in the end
# TODO: 
fall_colors.extend([(1,1,1)])
#cdict = {'fall': tuple(fall_colors)}
#fall_cm = colors.LinearSegmentedColormap('fall', cdict)
fall_cm = colors.LinearSegmentedColormap.from_list('fall_cm',
                                                   fall_colors,
                                                   len(fall_colors))

plt.close('all')

#%%
#==============================================================================
# Scatter plot across generations
#==============================================================================


#==============================================================================
# Generate colorbar
#==============================================================================

#fake_data = [[0,0],[0,0]]
#CS3 = plt.contourf(fake_data, generations, cmap='autumn_r')
#plt.clf()

#==============================================================================
# norm = colors.Normalize(vmin=0, vmax=ngen)
# fake_data = np.array([[0,0],
#                       [ngen, ngen]],dtype=int)
# cax = ax.imshow(fake_data, interpolation='nearest', cmap='autumn_r')
# #cbar.ax.set_yticklabels(['Gen. 0', 'Gen. {}'.format(ngen)], rotation=45)
# bounds = range(ngen+1)
# cbar = fig.colorbar(cax, 
#                     ticks=bounds,
#                     #ticklocation='center',
#                     boundaries=bounds, 
#                     fraction=0.030, 
#                     pad=0.05)
# cbar.ax.set_label('generation number')
# #cbar.ax.set_yticklabels(clabels, rotation=0)
#==============================================================================
X = []
Y = []
C = []
if ip.perf_dim == 2:
    fig = plt.figure(figsize=plt.figaspect(0.75))
    ax = fig.add_subplot(111)
    for gen in generations:
        perf_file = '{}perf{}.txt'.format(ip.perfout_dir, gen)
        df = pd.read_csv(perf_file, sep='\t')
        X.append(df[ip.perf[0]])
        Y.append(df[ip.perf[1]])
        C.append(np.ones(ip.pop_size)*gradient[gen])
#        for idx in range(ip.pop_size):
#            C.append([fall_colors[gen]])
    X = np.hstack(X)
    Y = np.hstack(Y)
    C = np.hstack(C)

    s = ax.scatter(X,Y, c=C, cmap='autumn_r')
#    os_tick = -0.5
#    bounds = np.linspace(os_tick, ngen+1+os_tick, num=ngen+1, endpoint=True)
    bounds = range(ngen+1)
    cb = fig.colorbar(s,ticks=bounds,boundaries=bounds)
#    cb.ax.set_label('generation number')
     #cbar.ax.set_yticklabels(clabels, rotation=0)

    #cb.ticks=range(ngen+1)
#TODO: set tickkkkkkkkkkkkkkkkkks
    #cb.set_label('Generation')        
        # ax.scatter(df[ip.perf[0]], 
        #             df[ip.perf[1]], 
        #             color=fall_colors[gen],
        #             label='Generation {}'.format(str(gen)))

    plt.xlabel(r'$WL_{VOP} + WL_{VON}\ [um]$')
    plt.ylabel(r'$|WL_{CLK}|\ [um]$')
    plt.title('Comparator Layout Perfomance')
    
    plt.subplots_adjust(left=0.10, bottom=0.20 , right=0.70, top=0.80)
    plt.tight_layout()
    #plt.colorbar(CS3)
    plt.savefig('{}scatter_{}_pop={}_pmut={}_pcx={}.png'\
                .format(ip.fig_dir, ip.blk_name, ip.pop_size, \
                        ip.mut_prob, ip.cx_prob), dpi=1000)

#%%
#==============================================================================
# Find reference point
#==============================================================================
# need to use pareto front nadir point instead of the worst case.
ref_pt = [None]*ip.perf_dim

norm_arr, utopian = np.load(os.path.join(ip.pnr_dir, 'norm_arr.npy'))
ref_pt =  norm_arr + utopian
print (ref_pt)

#==============================================================================
# Calculate hypervolume
#==============================================================================
#def hypervol_test(perf_file_path, perf, ref_pt):
#    df = pd.read_csv(perf_file_path, sep='\t')
#    Xs = list(df[perf[0]])
#    Ys = list(df[perf[1]])
#    Inds = range(len(df))
#    paretoX, paretoY, paretoInd = pareto_2d(Xs, Ys, Inds)
#    data_pts = zip(paretoX, paretoY)
#    hypervol = hypervolume(np.array(data_pts), np.array(ref_pt))
#    return hypervol

hypervols = [None]*len(generations)
# print (hypervols)
for gen in generations:
    perf_file = '{}perf{}.txt'.format(ip.perfout_dir, gen)
    print ('*************************************************')
    print(perf_file)
    print("ref_pt:",ref_pt)
    hypervols[gen] = hypervol_c(perf_file, ref_pt)
print (hypervols)
##%%
##==============================================================================
## Plot hypervolume
##==============================================================================
#fig = plt.figure(figsize=(5,4), dpi=100, facecolor='w')
#
#ax = fig.add_subplot(111)
#ax.plot([gen*ip.pop_size for gen in generations], hypervols)
##ax.grid(True)
#plt.xlabel('# of Births')
#plt.ylabel('Hypervolume')
#plt.subplots_adjust(left = 0.20, bottom = 0.18 , right = 0.88, top = 0.88)
#plt.title('{} performance evolution'.format(ip.blk_name))
##plt.tight_layout()
#plt.show()
#==============================================================================
# Calculate diversity
#==============================================================================
num_distinct = []
for gen in generations:
    path = '{}cstr{}.txt'.format(ip.cstrout_dir, str(gen))
    cstr_df = pd.read_csv(path, sep='\t+',engine='python')
    num_distinct.extend([len(cstr_df.drop_duplicates())])
per_distinct = np.array(num_distinct)/ip.pop_size*100
    
#==============================================================================
# Plot hypervolume
#==============================================================================
# set_plot_slides(fig_width=12, fig_height=8)
fig = plt.figure()#(figsize=(8,8), dpi=100, facecolor='w')

ax = fig.add_subplot(211)
ax.plot([gen*ip.pop_size for gen in generations], hypervols)
#ax.grid(True)
plt.xlabel('# of Births')
plt.ylabel('Hypervolume')
plt.subplots_adjust(left=0.20, bottom=0.20, right=0.88, top=0.80)
plt.title('Performance Evolution of {}\npopulation size={}, generation count={}, objective function count={}'\
           .format(ip.blk_name, ip.pop_size, ip.ngen, len(ip.perf)))
plt.grid(True)
#plt.tight_layout()
#plt.ylim([140, 160])

#%%
ax2 = fig.add_subplot(212)
ax2.plot([gen*ip.pop_size for gen in generations], per_distinct)
#ax.grid(True)
plt.xlabel('# of Births')
plt.ylabel('Distinct Individuals [%]')
plt.subplots_adjust(left=0.20, bottom=0.20 , right=0.88, top=0.80)
plt.title('Diversity')
plt.ylim([0,100])
plt.tight_layout()
#plt.show()
plt.grid(True)
##plt.plot(p_front[0], (1/156)*[power(p_front[1][i], -1) for i in range(len(p_front[1]))])
plt.savefig('{}{}_pop={}_ngen={}.png'\
            .format(ip.fig_dir, ip.blk_name, ip.pop_size, \
                    ip.ngen), dpi=1000)
plt.show()
