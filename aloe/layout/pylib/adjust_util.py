'''
Adjusts area utilization based on the previous layout quality.
The area utilization can be reduced
'''
from __future__ import division
import os
import re
import subprocess
import sys
from ..settings import pnr_dir

def adjust_util(fusr, connected, ratio=0.9, key='area_util'):
    '''
    Function: adjust area_util according to connectivity report and/or drc report
    '''
    if not connected:
        ftemp = os.path.join('{}.bck'.format(fusr))
        # Find the percentage
        # [\s]? match 0 or more whitespace characters
        # ([[:digit:]]+) captures decimal points
        regex = re.compile(r'area_util[\s]?=[\s]?[0].([\d])')
        with open(fusr, 'r') as fin:
            with open(ftemp, 'w') as fout:
                for line in fin:
                    if line.startswith(key):
                        tu_orig_digits = int(regex.search(line).group(1))
                        tu_new = ratio*tu_orig_digits/10**(len(str(tu_orig_digits)))
                        fout.write('{} = {}\n'.format(key, tu_new))
                    else:
                        fout.write(line)
        subprocess.call(['mv', '-f', ftemp, fusr])
        print ('INFO: Area utilization reduced by {} to {}'.format(ratio, tu_new))

if __name__ == '__main__':
    connected = sys.argv[1]
    adjust_util(os.path.join(pnr_dir, 'usr_ip.py'), connected)
