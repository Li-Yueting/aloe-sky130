from __future__ import division
import numpy as np
from numpy.linalg import norm
from aloe.layout.pylib.expr import read_expr


def eval_symmetry(file_expr):
    nl = read_expr(file_expr, 'nl')
    d0 = float(nl['out'])
    d1 = float(nl['rst'])
    return np.array([d0])

def eval_ro_top(individual, file_expr):
    nl = read_expr(file_expr, 'nl')

    # s0 = float(nl['va'])
    # s1 = float(nl['vb'])
    s0 = float(nl['amp/vg']) + float(nl['amp/vq'])
    s1 = float(nl['vc'])

    # print (s0)

    # s11 = float(nl['RO/INV1/sp']) + float(nl['RO/INV1/sn'])
    # s12 = float(nl['RO/INV2/sp']) + float(nl['RO/INV2/sn'])
    # s13 = float(nl['RO/INV3/sp']) + float(nl['RO/INV3/sn'])
    # s14 = float(nl['RO/INV4/sp']) + float(nl['RO/INV4/sn'])
    # s15 = float(nl['RO/INV5/sp']) + float(nl['RO/INV5/sn'])
    # s16 = float(nl['RO/INV6/sp']) + float(nl['RO/INV6/sn'])
    # s17 = float(nl['RO/INV7/sp']) + float(nl['RO/INV7/sn'])
    # s18 = float(nl['RO/INV8/sp']) + float(nl['RO/INV8/sn'])
    # s19 = float(nl['RO/INV9/sp']) + float(nl['RO/INV9/sn'])
    # s20 = float(nl['RO/INV10/sp']) + float(nl['RO/INV10/sn'])
    # s21 = float(nl['RO/INV11/sp']) + float(nl['RO/INV11/sn'])
    individual.fitness.values = (s0, s1)

