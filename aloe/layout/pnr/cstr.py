import pandas as pd
import sys
sys.dont_write_bytecode = True

__author__ = 'Po-Hsuan Wei'
__update__ = 'Uses Pandas DataFrame'
__version__ = '1.0'
__software__ = 'Python 2.7.12'
# Checked by running GA once
# Need to expand the obj to have ['net','component','pin']
def read_cstr(obj, attr, file_path):
    # Format dependent.
    # Current setting is <net_name>\t<net_weight>\t<net_use>
    # Using Pandas dataFrame avoids the need to create an additional map
    # The 'sep' is VERY important as when I index by label, 
    # the label name might automatically include white spaces. 
    # To allow for parsing of multiplie dilimiters, both space and tab has to be 
    # taken care of. Also the '+' means that multiple tabs or spaces are allowed
    if obj == 'net':
        df = pd.read_table(file_path, sep='\s+|\t+', comment='#', na_values='DC', engine='python')
        df.set_index('name', inplace=True)
        if 'weight' in attr:
            df['weight'].fillna(1, inplace=True)
        if 'use' in attr:
            df['use'].fillna('SIGNAL', inplace=True)
        if 'shield' in attr:
            df['shield'].fillna('None', inplace=True)
    else: # This case is not yet tested
        print ('Invalid obj. Available options are "net".')
    return df

def read_cstr_best(file_path):
	'''
	For use in outputting the constraints for the # of individuals
	users with to output. Each individuals is in rows, not cols
	'''
	df = pd.read_table(file_path, sep='\s+|\t+', comment='#', na_values='DC', engine='python')
	return df

def write_cstr(obj, df, file_path):
    '''
    Note: While DataFrame can be of any form (individual in columns or rows)
    having each individual in columns is preferred due to legacy
    '''
    if obj == 'net':
        df.to_csv(file_path, sep='\t', index=False)
    else:
        print ('Invalid obj. Available options are "net".')
