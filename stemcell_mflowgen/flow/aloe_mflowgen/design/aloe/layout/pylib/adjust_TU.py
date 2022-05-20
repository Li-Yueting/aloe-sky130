'''
Adjusts area utilization based on the previous layout quality.
The area utilization can be reduced
'''
from __future__ import division
import os
import re
import subprocess
from ...config.config import blk_name
from ..settings import pnr_dir, rpt_dir

def connected(fconn):
    '''
    Function: Read connectivity report, flag error
    '''
    try:
        if 'Found no problems or warnings.' in open(fconn).read():
            print 'INFO: All regular nets are connected in {}'.format(blk_name)
            return True
        print 'WARN: Some regular nets are not connected in {}'.format(blk_name)
        return False
    except IOError:
        print 'Cannot open {}'.format(fconn)
        return True

def drc_clean(fdrc):
    '''
    Function: read DRC report and classify/quantify the severeness of errors
    '''

    return True

def adjust_util(fusr, fconn, fdrc='', ratio=0.9, key='area_util'):
    '''
    Function: adjust area_util according to connectivity report and/or drc report
    '''
    if not connected(fconn):
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
        print 'INFO: Area utilization reduced by {} to {}'.format(ratio, tu_new)

if __name__ == '__main__':
    adjust_util(
        os.path.join(pnr_dir, 'usr_ip.py'),
        os.path.join(rpt_dir, '{}.conn.rpt'.format(blk_name)))
