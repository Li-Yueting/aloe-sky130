import os
import sys
import pandas as pd
sys.dont_write_bytecode = True

__author__ = 'Po-Hsuan Wei'
__software__ = 'Python 2.7.12'

def maxgen(top_dir)    :
    '''Finds the maximum generation in output directory.'''
    perf_files = []
    for top_dir, subdir_list, file_list in os.walk(top_dir):
        perf_files.extend(file_list)
    
    for f in file_list:
        # To exclude _streamed.txt
        if not f.split('.')[0][-1].isdigit():
            perf_files.remove(f)
          
    gen_nums = map(int, [pfile.lstrip('perf').rstrip('.txt') for pfile in perf_files])
    try: 
        return max(gen_nums)
    except:
        sys.exit('ERROR: Problem reading files under {}'.format(dir))
# Need to expand the obj to have ['net','component','pin']
def read_params(obj, file_path):
    if obj == 'net':
        df = pd.read_table(file_path, sep = '\s+|\t+', comment = '#', engine='python')
    else:
        print ('Invalid obj. Available options are "net".')
    return df
def write_params(obj, df, file_path):
    if obj == 'net':
        df.to_csv(file_path, sep = '\t', index=False)
    else:
        print ('Invalid obj. Available options are "net".')
def write_map(df, file_path):
    df.append(file_path, df, index=False)
