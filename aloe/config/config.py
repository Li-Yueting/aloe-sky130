import os
#TODO: Modify syn_dir to be not the same as syn_data_dir
#TODO: Pins and nets overlap with pnr/usr_ip
#==============================================================================
# Group Objective Function or Not
#==============================================================================
group = False

#==============================================================================
# Modify for each block
#==============================================================================
lib_name    = 'poc'
blk_name    = 'BGR_V1_'
tb_name     = ''

#=======
# Pins
#=======
lpins = [] #['VIP', 'VIN', 'VCP', 'VCN'] # Left pins
rpins = [] #['VOP', 'VON'] # Right pins
tpins = [] #['CKB']    # Top pins
bpins = []    # Bottom pins
xpins = []#['VDD', 'VSS'] # don't care pins
#===========================================================================
# Nets (Original ver)
#===========================================================================
# pos_nets = ['RO/INV1/sp', 'RO/INV2/sp', 'RO/INV3/sp', 'RO/INV4/sp', 'RO/INV5/sp', 'RO/INV6/sp', 'RO/INV7/sp', 'RO/INV8/sp', 'RO/INV9/sp', 'RO/INV10/sp', 'RO/INV11/sp', 'ctlp']    # Positive nets
# neg_nets = ['RO/INV1/sn', 'RO/INV2/sn', 'RO/INV3/sn', 'RO/INV4/sn', 'RO/INV5/sn', 'RO/INV6/sn', 'RO/INV7/sn', 'RO/INV8/sn', 'RO/INV9/sn', 'RO/INV10/sn', 'RO/INV11/sn', 'ctln']    # Negative nets
# ckp_nets = []    # Positive clock nets
# ckn_nets = []    # Negative clock nets
# clk_nets = []    # Clock nets
# sgl_nets = ['ro_out', 'RO/o1', 'RO/o2', 'RO/o3', 'RO/o4', 'RO/o5', 'RO/o6', 'RO/o7', 'RO/o8', 'RO/o9', 'RO/o10']  # Signal nets
# pwr_nets = ['VDD']
# gnd_nets = ['VSS']
# all_nets = pos_nets + neg_nets + ckp_nets + ckn_nets + clk_nets + sgl_nets
# clk_nets = ['clk']    # Clock nets

# ========================= sgl nets for inverter ============================
# sgl_nets = ['en', 'ds', 'in', 'out', 'VNW', 'VDDPST', 'POC', 'VDDCE', 'VDDPE', 'VPW', 'VSSPST', 'VSSE']  # Signal nets

# ========================= sgl nets for ringosc =============================
# sgl_nets = ['en', 'out1', 'out2', 'out3', 'out4', 'out5', 'inv1/ds', 'inv2/ds', 'inv3/ds', 'inv4/ds', 'inv5/ds', 'VNW', 'VDDPST', 'POC', 'VDDCE', 'VDDPE', 'VPW', 'VSSPST', 'VSSE']

# ========================= sgl nets for BGR =================================
sgl_nets = ['porst', 'va', 'vb', 'vbg', 'vc', 'l17', 'l18', 'l19', 'l20', 'amp/vg', 'amp/vq', 'amp/vx', 'VNW', 'VDDPST', 'POC', 'VDDCE', 'VDDPE', 'VPW', 'VSSPST', 'VSSE']
core_nets = ['BGR_Core/vbneg', 'BGR_Core/l6', 'BGR_Core/l7', 'BGR_Core/l8', 'BGR_Core/l10', 'BGR_Core/l11', 'BGR_Core/l1', 'BGR_Core/l2', 'BGR_Core/l4', 'BGR_Core/l5', 'BGR_Core/l12', 'BGR_Core/R6/l', 'BGR_Core/R7/l', 'BGR_Core/R8/l', 'BGR_Core/R10/l', 'BGR_Core/R11/l', 'BGR_Core/R3/l', 'BGR_Core/R1/l', 'BGR_Core/R2/l', 'BGR_Core/R4/l', 'BGR_Core/R5/l', 'BGR_Core/R12/l','R17/l', 'R18/l', 'R19/l', 'R20/l']

pwr_nets = ['VDD']
gnd_nets = ['VSS']
all_nets = sgl_nets + core_nets + pwr_nets + gnd_nets

#==============================================================================
# Directory paths
#==============================================================================
virtuoso = '/home/pohsuan/virtuoso'
dump     = '/home/pohsuan/dump'
# Assme that project home is 2 levels up.
# input.smi must have an absolute path for setting up 'workdir'
prj_home = os.environ['ALOE_HOME']
prep_dir = os.path.join(prj_home, 'prepare')
scs_dir  = os.path.join(prep_dir, 'data')
syn_dir  = os.path.join(prj_home, 'synthesize/data')
syn_data_dir = syn_dir
lay_dir = os.path.join(prj_home, 'layout')

#==============================================================================
# Namings
#==============================================================================
RAW_STUB = '_raw'
EXT   	 = '.scs'
TB_STUB  = '_tb'

scs_raw = '{}/{}{}{}'.format(scs_dir, blk_name, RAW_STUB, EXT)
scs_cln = '{}/{}{}'.format(syn_dir, blk_name, EXT)
param   = os.path.join(syn_dir, 'input.smi')

#=========================================
# Modify for each design environment
# Each license allows 8 threads
# verify_drc can use 4 at max
#=========================================
ncpu = 1
