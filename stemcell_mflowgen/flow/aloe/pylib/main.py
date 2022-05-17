import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--mode', type=str, default='single', help='running mode') # single/multiple
args = parser.parse_args()
if args.mode == 'single':
    os.system('innovus -nologv -init $tcllib/single_run.tcl -cpus 8 > $outputs/single_run.log')
elif args.mode == 'multiple':
    os.system('innovus -nologv -init $tcllib/multiple_run.tcl -cpus 8 > $outputs/multiple_run.log')
else:
    print("please check your mode string spelling")