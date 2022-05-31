import numpy as np
import matplotlib.pyplot as plt
import csv

# from matplotlib import rc

# font = {'family' : 'sans-serif',
# 'weight' : 'bold',
# 'size' : 14}
# rc('font', **font)

fig = plt.figure()

x0 = []
y0 = []
with open('perf0.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter = ',')
    for row in lines:
        x0.append(float(row[0]))
        y0.append(float(row[1]))

x1 = []
y1 = []
with open('perf1.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter = ',')
    for row in lines:
        x1.append(float(row[0]))
        y1.append(float(row[1]))

x2 = []
y2 = []
with open('perf2.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter = ',')
    for row in lines:
        x2.append(float(row[0]))
        y2.append(float(row[1]))

x3 = []
y3 = []
with open('perf3.csv','r') as csvfile:
    lines = csv.reader(csvfile, delimiter = ',')
    for row in lines:
        x3.append(float(row[0]))
        y3.append(float(row[1]))

plt.scatter(x0, y0,  c='y', marker = 'o')
plt.scatter(x1, y1, c='b', marker = '^')
plt.scatter(x2, y2, c='g', marker = 'o')
plt.scatter(x3, y3, c='r', marker = '^')
plt.xlabel('objective 1', fontsize=12)
plt.ylabel('objective 2', fontsize=12)
plt.savefig('perf.png')
