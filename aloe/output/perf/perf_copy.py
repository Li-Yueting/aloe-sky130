import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd


sns.set_style('darkgrid')        # darkgrid, white grid, dark, white and ticks
plt.rc('axes', titlesize=18)     # fontsize of the axes title
plt.rc('axes', labelsize=14)     # fontsize of the x and y labels
plt.rc('xtick', labelsize=13)    # fontsize of the tick labels
plt.rc('ytick', labelsize=13)    # fontsize of the tick labels
plt.rc('legend', fontsize=13)    # legend fontsize
plt.rc('font', size=13)          # controls default text sizes

df = pd.read_csv('perf.csv')

# colors = sns.color_palette('deep')
plt.figure(figsize=(16,10), tight_layout=True)
plt.title('Aloe Optimiztion')
ax = sns.scatterplot(data=df, x="Objective0", y="Objective1",hue="generation",palette="deep",s=80)

# fig = plt.figure()

# x0 = []
# y0 = []
# with open('perf0.csv','r') as csvfile:
#     lines = csv.reader(csvfile, delimiter = ',')
#     for row in lines:
#         x0.append(float(row[0]))
#         y0.append(float(row[1]))

# x1 = []
# y1 = []
# with open('perf1.csv','r') as csvfile:
#     lines = csv.reader(csvfile, delimiter = ',')
#     for row in lines:
#         x1.append(float(row[0]))
#         y1.append(float(row[1]))

# x2 = []
# y2 = []
# with open('perf2.csv','r') as csvfile:
#     lines = csv.reader(csvfile, delimiter = ',')
#     for row in lines:
#         x2.append(float(row[0]))
#         y2.append(float(row[1]))

# x3 = []
# y3 = []
# with open('perf3.csv','r') as csvfile:
#     lines = csv.reader(csvfile, delimiter = ',')
#     for row in lines:
#         x3.append(float(row[0]))
#         y3.append(float(row[1]))

# plt.scatter(x0, y0,  c='y', marker = 'o')
# plt.scatter(x1, y1, c='b', marker = '^')
# plt.scatter(x2, y2, c='g', marker = 'o')
# plt.scatter(x3, y3, c='r', marker = '^')
plt.savefig('perf.png')

