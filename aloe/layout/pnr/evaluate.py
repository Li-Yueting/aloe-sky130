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

    s0 = float(nl['clk'])
    s1 = float(nl['en'])
    s2 = float(nl['out1'])
    s3 = float(nl['out2'])
    s4 = float(nl['out3'])
    s5 = float(nl['out4'])
    s6 = float(nl['out5'])
    s7 = float(nl['inv1/ds'])
    s8 = float(nl['inv2/ds'])
    s9 = float(nl['inv3/ds'])
    s10 = float(nl['inv4/ds'])
    s11 = float(nl['inv5/ds'])
    s12 = float(nl['VDD'])
    s13 = float(nl['VSS'])
    s14 = float(nl['VNW'])
    s15 = float(nl['VDDPST'])
    s16 = float(nl['POC'])
    s17 = float(nl['VDDCE'])
    s18 = float(nl['VDDPE'])
    s19 = float(nl['VPW'])
    s20 = float(nl['VSSPST'])
    s21 = float(nl['VSSE'])

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
    individual.fitness.values = (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21)

