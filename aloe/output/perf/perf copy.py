from mpl_toolkits import mplot3d
import numpy as np
import matplotlib.pyplot as plt
import csv
# from matplotlib import rc

# font = {'family' : 'sans-serif',
# 'weight' : 'bold',
# 'size' : 14}
# rc('font', **font)

fig = plt.figure()
ax = plt.axes(projection='3d')

x0 = []
y0 = []
z0 = []

with open('perf0.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter = ',')
    for row in lines:
        x0.append(float(row[0]))
        y0.append(float(row[1]))
        z0.append(float(row[2]))

x0 = []
y0 = []
z0 = []

with open('perf0.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter = ',')
    for row in lines:
        x0.append(float(row[0]))
        y0.append(float(row[1]))
        z0.append(float(row[2]))

ax.scatter3D(x0, y0, z0, c='r', marker = 'o')
plt.savefig('perf1.png')
