import sys
sys.path.append('../pyMOSChar')
import spice3read as s3r
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import statistics


sns.set_style('darkgrid')        # darkgrid, white grid, dark, white and ticks
plt.rc('axes', titlesize=18)     # fontsize of the axes title
plt.rc('axes', labelsize=14)     # fontsize of the x and y labels
plt.rc('xtick', labelsize=13)    # fontsize of the tick labels
plt.rc('ytick', labelsize=13)    # fontsize of the tick labels
plt.rc('legend', fontsize=13)    # legend fontsize
plt.rc('font', size=13)          # controls default text sizes

vbgfinals = []

for i in range(218):
    run = s3r.read('../sims/gen4_0/post_temp0_bandgap_real_tran_gauss{}.raw'.format(i))
    vbg = run['v(vbg)']
    vbgfinal = vbg.flatten()[-1]*1.0e3
    vbgfinals.append(vbgfinal)
df = pd.DataFrame(vbgfinals, columns=['Vref'])
# print(df)

stdev = round(statistics.stdev(vbgfinals),2)
mean = round(statistics.mean(vbgfinals),2)

plt.figure(figsize=(10,6), tight_layout=True)
bins = [920, 925, 930, 935, 940, 945, 950, 955, 960, 965, 970, 975, 980, 985, 990, 995, 1000, 1005, 1010]

ax = sns.histplot(data=df, x='Vref', bins=bins, color=sns.color_palette('Set2')[2], linewidth=2)
plt.suptitle('Reference Voltage with Mismatch @ temp = 0℃', size = 20)
ax.set(title='generation 4, n=218, u={}, stdev={}'.format(mean, stdev), xlabel='Vref (mV)', ylabel='Count')
plt.savefig('post_gauss_gen4_temp0.png')