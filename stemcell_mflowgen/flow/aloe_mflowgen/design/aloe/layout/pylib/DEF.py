import sys
import os
sys.dont_write_bytecode = True
__author__      = 'Po-Hsuan Wei'
__date__        = '2016.11.07'
__update__      = 'Dedicated read/write'
__version__     = '1.0'
__software__    = 'Python 2.7.12'
__use__         = 'DEF object'

class DEF(object):
    '''Read and write DEF files'''
    # TODO: Check out the "__iter__" method
    _actions = ['init', 'place', 'route', 'lvs', 'pex']
    steps = {}
    # DRC not included here. The list of _actions are in order.
    def __init__(self, defin_path, defout_path, stage, itr):
        '''"itr" is the iteration of the input DEF file. Defaults to 0.'''
        self.defin_path = defin_path
        self.defout_path = defout_path
        self.stage = stage
        self.itr = itr
        self.content = []
    # def read_perf(self):
# TODO: Unless we need addtional functionality, combine read with _read_section
    def read(self):
         with open(self.defin_path, 'r') as defin:
             self.content = defin.read()
             # self.content = self._read_section(defin)
    def write(self):
        dir = os.path.dirname(self.defout_path)
        if dir and not os.path.exists(dir):
            os.makedirs(dir)
        with open(self.defout_path, 'w') as defout:
             defout.write(self.content)
             # self._write_section(defout, self.content)
#    @staticmethod     
#    def _write_section(fo, content):
#        fo.write(content)
#    @staticmethod
#    def _read_section(fi):
#        return fi.read()
            
    def set_steps(self):
        if self.stage not in self._actions:
            print('Invalid stage input.')
            # TODO: Here should raise exception error and exit script.
            # Maybe use try...except
        else:
            # Flag marks whether the stage is reached
            flag = False
            for action in self._actions:
                if not flag:
                    self.steps[action] = True
                    # Setting the _actions after 'stage' to be False
                    if self.stage == action:
                        flag = True
                else:
                    self.steps[action] = False

                   
    def find_section(self, section):
        '''Return tuple of the start/end numbers of the specified section. 
        Available section options are [COMPONENTS, PINS, SPECIALNETS, NETS]'''
        # TODO: Might want to write another function that allows the users to input multiple sections
        # TODO: Use a seek() as a pointer
        start_num = None
        end_num = None
        sect_flag = False
        for idx, line in enumerate(self.content):
            if (not sect_flag) and line.startswith(section):
                start_num = idx            
                sect_flag = True
                continue
            elif sect_flag and line.startswith('END ' + section):
                end_num = idx
        return (start_num, end_num)

#==============================================================================
#     def find_sections(self, sections):
#         '''Return tuples of the start/end numbers of the specified sections.'''
#         # Might want to sort the sections in order.
#         # Note the inital condition
#         line_num_lst = [(None,None)]*len(sections)
#         flag_lst = [0]*len(sections)
#         with open(self.defin_path, 'r') as fin:
#             for idx, line in enumerate(fin):
#                 for idy, section in enumerate(sections):
#                     if (flag_lst[idy-1] == 2) and (line.startswith(section)):
#                         flag_lst[idy] = 1
#                         start_num = idy
#                         break
#==============================================================================
