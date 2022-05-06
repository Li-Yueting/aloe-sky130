import os
from ..config.config import lay_dir, lpins, rpins, tpins, bpins

tcllib  = os.path.join(lay_dir, 'tcllib')
pylib_dir   = os.path.join(lay_dir, 'pylib/')
pnr_dir     = os.path.join(lay_dir, 'pnr/')
input_dir   = os.path.join(lay_dir, 'input/')
output_dir  = os.path.join(lay_dir, 'output/')
tech_dir    = os.path.join(lay_dir, 'engine/data')
rpt_dir     = os.path.join(lay_dir, 'engine/rpts')
log_dir     = os.path.join(lay_dir, 'engine/logs')
