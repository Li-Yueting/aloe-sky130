import sys
import os
import random
import numpy as np

def select(best, genes, adjusts):
    pop_size = int(os.getenv("pop_size"))
    # num_of_net = int(os.getenv("num_of_net"))
    gen = int(os.getenv("gen"))
    print('yueting--')
    print(type(adjusts), len(adjusts))
    if gen == 0 or np.max(adjusts) > best[1]:
        best = genes[np.argmax(adjusts)], np.max(adjusts)
        p = adjusts / np.sum(adjusts)
        cu_p = []
        for i in range(pop_size):
            cu_p.append(np.sum(p[0:i]))
        cu_p = np.array(cu_p)
        r0 = np.random.uniform(0, 1, pop_size)
        sel = [max(list(np.where(r > cu_p)[0]) + [0]) for r in r0]
        adjusts=np.array(adjusts)
        # 保留最优的个体
        if np.max(adjusts[sel]) < best[1]:
            genes[sel[np.argmin(adjusts[sel])]] = best[0]
        genes = genes[sel]
    return best, genes

if __name__ == "__main__":
    best, genes = select(sys.argv[1],sys.argv[2],sys.argv[3])
    print(best)
    print(genes)
    



    