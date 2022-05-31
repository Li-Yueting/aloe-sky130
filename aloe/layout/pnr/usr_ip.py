from ..settings import *
import os
import sys
sys.dont_write_bytecode = True

#==============================================================================
# User inputs
#==============================================================================
#------------------------------------------------------------------------------
# Basic
#------------------------------------------------------------------------------
# Netlist location
cus_home  = '/home/pohsuan/custom'     # Custom home directory

# Optimization objectives

# perf = ['d0', 'd1', 'd2', 'd3', 'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'a9']
# perf_type = ['min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min']

# perf = ['d0', 'd1', 'd2', 'd3', 'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'a7', 'a8', 'a9', 'a10', 'a11', 'a12', 'a13', 'a14', 'a15', 'a16', 'a17']
# perf_type = ['min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min', 'min']

perf = ['a0', 'a1']
perf_type = ['min', 'min']

perf_group_type =['min']
tb_name     = ''

#===
# Pins
#===
#======#
# Nets #
#======#

#------------------------------------------------------------------------------
# Advanced
#------------------------------------------------------------------------------
# Hierarchical inputs
aspect_ratio = 1    # Aspect ratio [0.1, 10]
area_util = 0.7
pin_file = False    # Pin file location {<location>, False}
top_layer = 5    # Top routing layer [1, 9]

# Output opti`ons
plot = True    # Plot performance evaluation {True, False}
nout = 2    # Number of streamouts
label_size = 0.1    # Streamout label size

# Evolution algorithms parameters
pop_size = 80 # Population size [20, 200]
ngen  = 6 # Number of generations   [1, 100]
cx_prob = 0.5    # Crossover probability [0, 1]
mut_prob = 0.3    # Mutation probability  [0, 0.5]
eta = 1    # Crowding degree       [1, 50]