import os
import sys
from ..pylib.NDR import NDR
from ...config.config import *
from ..pnr.usr_ip import *

sys.dont_write_bytecode = True

__author__      = 'Xingyu Ni'
__software__    = 'Python 2.7.12'

# Patching between GUI and usr_ip.py+def_ip.py (new version)
top_cell = blk_name

# PNR settings
stage       = 'route'               # Run automation until <stage>
                                    # ['init', 'place', 'route','drc', 'lvs', 'pex']
obj         = 'net'
nw_max      = 20
nw_min      = 2
expr        = ['nl', 'area']
cstr        = 'net_attr'            # Consider changing to knob or genotype
# [Optional] Set preferred min-route layer and width for certain nets
seed = 0
use_ndr   = True

# Instantiate NDR objects
fndr = os.path.join(pnr_dir, 'ndr.tcl')
# NDR(nets, width mutipliers, spacing multipliers, metal layers, bottom preferred layers, fndr)

# ============================= ndr0 for BGR ============================
ndr0 = NDR(['porst', 'va', 'vb', 'vbg', 'vc', 
            'l17', 'l18', 'l19', 'l20',
            'amp/vg', 'amp/vq', 'amp/vx', 'VNW', 'VDDPST', 'POC',
            'VDDCE', 'VDDPE', 'VPW', 'VSSPST', 'VSSE', 
            'BGR_Core/vbneg', 'BGR_Core/l6', 'BGR_Core/l7', 'BGR_Core/l8', 'BGR_Core/l10',
            'BGR_Core/l11', 'BGR_Core/l1', 'BGR_Core/l2', 'BGR_Core/l4', 'BGR_Core/l5',
            'BGR_Core/l12', 'BGR_Core/R6/l', 'BGR_Core/R7/l', 'BGR_Core/R8/l', 'BGR_Core/R10/l',
            'BGR_Core/R11/l', 'BGR_Core/R3/l', 'BGR_Core/R1/l', 'BGR_Core/R2/l', 'BGR_Core/R4/l',
            'BGR_Core/R5/l', 'BGR_Core/R12/l', 'R17/l', 'R18/l', 'R19/l', 'R20/l'], 
            [2, 2, 2, 2], [2, 2, 2, 2], [2,3,4,5], 2, fndr)
# ndr1 = NDR(['out', 'net027'], 
#             [5, 5, 5, 5], [5, 5, 5, 5], [2,3,4,5], 2, fndr)
# list of ndr to be used by run.py
ndrs = [ndr0]

#==============================================================================
# File paths: Change where needed
#==============================================================================
python_path      	= '{}/anaconda2/bin/python'.format(os.environ['HOME'])
if pin_file:
    pinin_path  	= os.path.join(input_dir, '{}.io'.format(blk_name))
else:
    pinin_path      = '{}'
verilogin_path  	= os.path.join(input_dir, '{}.v'.format(blk_name)) 

gdsout_dir     	= os.path.join(output_dir, 'gds/')
lefout_dir     	= os.path.join(output_dir, 'lef/')
vout_dir        = os.path.join(output_dir, 'verilog/')
exprout_dir    	= os.path.join(output_dir, 'expr/')
perfout_dir    	= os.path.join(output_dir, 'perf/')
cstrout_dir    	= os.path.join(output_dir, 'cstr/')
fig_dir        	= os.path.join(output_dir, 'fig/')

# TODO: Remove run old, new and out paths [2018.07.18]
run_path = os.path.join(pnr_dir, 'run.tcl')
run_old_path	= os.path.join(pnr_dir,'run_old.tcl')
run_new_path    = os.path.join(pnr_dir,'run_new.tcl')
#run_fnl_path    = os.path.join(pnr_dir, 'run_final.tcl')
run_out_path    = os.path.join(pnr_dir, 'run_out.tcl')
tech_path       = os.path.join(pnr_dir, 'tech.tcl')

def_old_dir    = os.path.join(lay_dir, 'engine/def_old/')
def_new_dir    = os.path.join(lay_dir, 'engine/def_new/')
def_hof_dir    = os.path.join(lay_dir, 'engine/def_hof/')

cstr_old_dir   = os.path.join(lay_dir, 'engine/cstr_old/')
cstr_new_dir   = os.path.join(lay_dir, 'engine/cstr_new/')
cstr_hof_dir   = os.path.join(lay_dir, 'engine/cstr_hof/')

expr_old_dir   = os.path.join(lay_dir, 'engine/expr_old/')
expr_new_dir   = os.path.join(lay_dir, 'engine/expr_new/')
expr_hof_dir   = os.path.join(lay_dir, 'engine/expr_hof/')

perf_old_dir   = os.path.join(lay_dir, 'engine/perf_old/')
perf_new_dir   = os.path.join(lay_dir, 'engine/perf_new/')
perf_hof_dir   = os.path.join(lay_dir, 'engine/perf_hof/')

opt_dir        = os.path.join(lay_dir, 'engine/opt/')
ea_dir         = os.path.join(lay_dir, 'engine/ea/')
data_dir       = os.path.join(lay_dir, 'engine/data/')
#log_dir 		= os.path.join(lay_dir, 'engine/log/')
#tlef_path  			= data_dir + 'arm.tlef'
lef_dir        	= os.path.join(data_dir, 'lef/')
tech_lef_path	= os.path.join(lef_dir, 'tsmc.tlef')
tasc_lef_path 	= os.path.join(lef_dir, 'tasc.lef')
arm_lef_path    = os.path.join(lef_dir, 'arm.lef')
#custom_lef_path     = os.path.join(lef_dir, '' 
#TODO:
#totic_gds_path      = data_dir + 'scgds/*gds'
gds_dir        = os.path.join(data_dir, 'gds/')
#arm_gds_path 		= data_dir + 'arm.gds'

lvs_dir		= '/home/pohsuan/lvs/' + blk_name + '/'
pex_dir		= '/home/pohsuan/pex/' + blk_name + '/'
drc_dir		= '/home/pohsuan/drc/' + blk_name + '/'

run_num_path 	= os.path.join(opt_dir, 'run_num.txt')
#gen_num_path    = os.path.join(opt_dir, 'gen_num.txt')
itr_file_path   = os.path.join(opt_dir, 'itr.txt')
map_file_path   = os.path.join(opt_dir, 'map.txt')

ea_file_path = os.path.join(pnr_dir, 'ea.py')
ea_temp_file_path = os.path.join(pnr_dir, 'ea_temp.py')

output_file_path = os.path.join(pnr_dir,'output.py')
output_temp_file_path = os.path.join(pnr_dir,'output_temp.py')

#==============================================================================
# Directory paths. Change if necessary (Merged from lef_ip.py)
#------------------------------------------------------------------------------
# TODO: Might not be necessary
# cds_home = os.environ['CDS_USER_HOME']
# data_path = '{}/engine/data'.format(lay_dir)
#TODO: Maybe should just put all LEF files in the same directory regardless of oa lib
lib_home = '{}/{}'.format(cus_home, lib_name)
cmd_home = '{}/cmd'.format(lib_home)
lef_home = '{}/lef'.format(lib_home)
gds_home = '{}/gds'.format(lib_home)

#cdl_home = '{}/cdl'.format(lib_home)
# TODO: Think of the number of cmd files saved...maybe we don't need all of them?
cmd_path = '{}/gen_{}_abs.il'.format(cmd_home, blk_name) 
lef_path = '{}/{}.lef'.format(lef_home, blk_name) 
#cdl_path = '{}/{}.cdl'.format(cdl_home, cell_name) 
list_path = '{}/cell.list'.format(lef_home)
#==============================================================================
# DO NOT MODIFY LINES BELOW
#==============================================================================
# Set input-related string lengths
run_num_len     = len(str(pop_size))
cstr_len        = len(cstr)
expr_len        = len(expr)
perf_dim        = len(perf)

# Zero padding
zero = '0'.zfill(run_num_len)
cstr0_file_path = cstr_hof_dir + cstr + zero + '.txt'
# TODO:
fdef0 	= def_hof_dir + blk_name + zero + '.def'
run0_file_path 	= os.path.join(pnr_dir, 'run0.tcl')


## Preprocess nets
# diff_net_pairs = zip(pos_nets,neg_nets)
# flat_diff_nets = [net for pair in diff_net_pairs for net in pair]
# diff_clk_net_pairs = zip(ckp_nets, ckn_nets)
# flat_diff_clk_nets = [net for pair in diff_clk_net_pairs for net in pair]
# all_nets = flat_diff_nets + flat_diff_clk_nets + sgl_nets + clk_nets

# all_nets come from config
nnets = len(all_nets)

# Stream out
gds_unit = 1000
