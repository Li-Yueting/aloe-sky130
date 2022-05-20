from __future__ import division
import pandas as pd
import os
import aloe.layout.pnr.def_ip as ip
import aloe.layout.pnr.ea as ea
try:
    import cPickle as pickle
except:
    import pickle


fin = open(os.path.join(ip.pnr_dir, 'hof.db'), 'r')
hof = pickle.load(fin)
fin.close()

fin = open(os.path.join(ip.pnr_dir, 'pop_old.db'), 'r')
pop = pickle.load(fin)
fin.close()

print pop[0].fitness.values
print 
print hof[0].fitness.values