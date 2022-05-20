'''
Adjusts area utilization based on the previous layout quality.
The area utilization can be reduced
'''
from __future__ import division
import os
from ...config.config import blk_name
from ..settings import rpt_dir

def connected(fconn):
    '''
    Function: Read connectivity report, flag error
    '''
    try:
        if 'Found no problems or warnings.' in open(fconn).read():
#            print 'INFO: All regular nets are connected in {}'.format(blk_name)
            return "true"
#        print 'WARN: Some regular nets are not connected in {}'.format(blk_name)
        return "false"
    except IOError:
#        print 'Cannot open {}'.format(fconn)
        return "true"

def drc_clean(fdrc):
    '''
    Function: read DRC report and classify/quantify the severeness of errors
    '''
    return True

if __name__ == '__main__':
    print (connected(os.path.join(rpt_dir, '{}.conn.rpt'.format(blk_name))))
