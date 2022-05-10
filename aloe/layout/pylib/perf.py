import os
import sys
import numpy as np
import pandas as pd
from aloe.layout.third.pylib.pyhv import hypervolume
sys.dont_write_bytecode = True

def pareto_2d(Xs, Ys, Inds, maxX=False, maxY=False):
# Sort the list in either ascending or descending order of X
    myList = sorted([[Xs[i], Ys[i], Inds[i]] for i in range(len(Xs))], reverse=maxX)
# Start the Pareto frontier with the first value in the sorted list
    p_front = [myList[0]]
# Loop through the sorted list
    for pair in myList[1:]:
        if maxY:
            if pair[1] >= p_front[-1][1]:
                p_front.append(pair)
        else:
            if pair[1] <= p_front[-1][1]:
                p_front.append(pair)
# Turn resulting pairs back into a list of Xs and Ys
    p_frontX = [pair[0] for pair in p_front]
    p_frontY = [pair[1] for pair in p_front]
    p_frontInd = [pair[2] for pair in p_front]
    return p_frontX, p_frontY, p_frontInd

def reference_pt(file_path, performance):
    df = pd.read_csv(file_path, sep='\t')
    reference_point = [max(df[obj]) for obj in performance]
    return reference_point

    # Not tested
def hypervol_2d(file_path, perf, ref_pt):
    df = pd.read_csv(file_path, sep='\t')
    data_pts = zip(list(df[perf[0]]), list(df[perf[1]]))
    hypervol = hypervolume(np.array(data_pts), np.array(ref_pt))
    return hypervol

def hypervol_hd(file_path, ref_pt):
    df = pd.read_csv(file_path, sep='\t')
    hypervol = hypervolume(np.array(df), np.array(ref_pt))
    return hypervol

def hypervol_c(file_path, ref_pt):
    os.system('rm /home/users/xingyuni/ee372/aloe-sky130/aloe/analyze/hv/hv.txt')
    os.system('cp {} /home/users/xingyuni/ee372/aloe-sky130/aloe/analyze/hv/perf.txt'.format(file_path))
    os.system('sed -i 1d /home/users/xingyuni/ee372/aloe-sky130/aloe/analyze/hv/perf.txt')
    # os.system('cat /home/users/xingyuni/ee372/aloe-sky130/aloe/analyze/hv/perf.txt | tr -s '[:blank:]' ',' >/home/users/xingyuni/ee372/aloe-sky130/aloe/analyze/hv/perf.csv')
    hypervol = pd.read_csv('/home/users/xingyuni/ee372/aloe-sky130/aloe/analyze/hv/perf.csv', header=None)
    print("********************************")
    print(hypervol.values)
    return float(hypervol.values)
def read_perf(stage, file_path):
    if stage is 'route': # This case is tested
        _name_pos = 0
        _val_pos = 1
        _data_start = True
    # TODO: The spef file has a different format.
    elif stage is 'pex': # This case is not yet tested
        _name_pos = 6
        _val_pos = 1
        _data_start = False
    else: # This case is not yet tested
        print ('Invalid stage. Available options are "route" and "pex".')
    table = {}
    with open(file_path, 'r') as fin:
        for line in fin:
            if _data_start:
                name = line.split()[_name_pos]
                value = line.split()[_val_pos]
                table[name] = value
            # 'GID' is the line right before the data
            elif line.split()[0] == 'GID':
                _data_start = True
        return table
