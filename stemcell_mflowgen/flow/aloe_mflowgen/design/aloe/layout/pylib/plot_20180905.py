import pandas as pd
import numpy as np
import aloe.layout.pnr.def_ip as ip
from aloe.layout.pnr.opt import maxgen

if __name__ == '__main__':
    lastgen = maxgen(ip.perfout_dir)
    perf_file = '{}perf{}.txt'.format(ip.perfout_dir, lastgen)
    df = pd.read_csv(perf_file, sep='\t')
    ncols = len(df.columns)
    idx_objs = np.empty((ncols,1))
    for idx in range(ncols):
        idx_objs[idx] = np.argmin(df[df.columns[idx]].values)
        print idx_objs[idx]