import os
import re
import sys

sys.dont_write_bytecode = True

def read_expr(fexpr, expressions, pattern=r'\w+\d+\.'):
    '''
    fexpr:  expression file
    expr:       list of expressions, specified by input
    pattern:    expresssion file patterns
    '''
    # Check file exist
    if not os.path.isfile(fexpr):
        return

    # List of file-name patterns to match
    list_regexes = []
    for expr in expressions:
        list_regexes.append(re.compile('{}{}'.format(pattern, expr)))
    # Check pattern match
    if not any(os.path.basename(fexpr) for regex in list_regexes):
        return

    # Read expression
    _name_pos = 0
    _val_pos = 1
    _spacers = '\s'
    table = dict()
    with open(fexpr, 'r') as fin:
        for line in fin:
            name = re.split(_spacers, line)[_name_pos]
            value = re.split(_spacers, line)[_val_pos]
            table[name] = value
    return table

if __name__ == '__main__':
    # Check file path
    dump = read_expr('/home/pohsuan/repo.git/aloe/layout/engine/expr_old/sa_latch_pmos_full_bk100.nl', ['nl','area'])
    table = read_expr('/home/pohsuan/repo.git/aloe/layout/engine/expr_old/sa_latch_pmos_full_bk0.nl', ['nl','area'])
    print (table)


# def read_netlength_expr(stage, file_path, pattern='\w+\d+\.nl'):
#     if stage is 'route': # This case is tested
#         _name_pos = 0
#         _val_pos = 1
#         _spacer = ' '
#         _data_start = True
#     # TODO: The spef file has a different format.
#     elif stage is 'pex': # This case is not yet tested
#         _name_pos = 6
#         _val_pos = 1
#         _spacer = ' '
#         _data_start = False
#     else: # This case is not yet tested
#         print 'Invalid stage. Available options are "route" and "pex".'
#     table = dict()
#     with open(file_path, 'r') as fi:
#         for line in fi:
#             if _data_start:
#                 name = line.split()[_name_pos]
#                 value = line.split()[_val_pos]
#                 table[name] = value
#             # 'GID' is the line right before the data
#             elif line.split()[0] == 'GID':
#                 _data_start = True
#         return table
