from __future__ import division
import os
import re
import subprocess
import sys

import glob2
import pandas as pd
from ...config.config import group, blk_name, prep_dir
from ..settings import tcllib, pnr_dir
# TODO: Check if it is a good practice to import this variable and use globally
sys.dont_write_bytecode = True

class ObjectiveFunctions(object):

    def __init__(self, dir_cstr, fusr, feval, fnorm, fcstr_pos, fcluster):
        '''
        dir_cstr: directory containing constraint files
        feval:     file containing all objective functions
        fcstr_pos: file containing constraint start positions, for instance, d: 0; s: 2
        ncstr:   dictionary that stores the type: number of names_constraints

        note: the naming rule for constraint files are:
            symmetry.const --> symmetry constraints
            cluster.const --> cluster constraints

        '''
        self.dir_cstr = dir_cstr
        self.validate_input()
        self.fusr = fusr
        self.feval = feval
        self.fnorm = fnorm
        self.fcstr_pos = fcstr_pos
        self.blk_name = blk_name
        self.fcluster = fcluster
        self.cstr_symmetry = []
        self.cstr_modgen = []
        self.names_symmetry = []
        self.names_modgen = []
        self.names_constraints = []
        self.cstr_dict = {'symmetry': 'd', 'modgen': 'a'}
        #function:   maps constraint name to characters
        self.reset_files(fcluster)

    def validate_input(self):
        '''
        function:   validate input directory
        when:       ObjectiveFunction object is initialized
        '''
        if not os.path.exists(self.dir_cstr):
            raise RuntimeError('{} does not exist'.format(self.dir_cstr))

    @staticmethod
    def reset_files(file_path):
        if os.path.isfile(file_path):
            subprocess.call(['rm', '-rf', file_path])
            print ('INFO: {} cleared'.format(file_path))

    def load_constraints(self):
        '''
        function:   load and process constraints
        when:       ??
        '''
        for fconstraint in glob2.glob(os.path.join(dir_cstr, '*.const')):
            self.process_constraints(fconstraint)

    def process_constraints(self, fconstraint):
        '''
        function:   process constraints
        when:       load_constraints() is called
        '''
        # First strip off ".const", then strip off the full file path
        constraint = fconstraint.rsplit('.', 1)[0].rsplit('/', 1)[-1]
        print (constraint)
        if constraint == 'symmetry':
            self.symmetry(fconstraint)
            return
        # TODO: Separate constraint processing for cluster and modgen
        elif constraint == 'cluster':
            self.modgen(fconstraint, fcluster)
            return
        elif constraint == 'modgen':
            self.modgen(fconstraint, fcluster)
            return
        else:
            print ('WARNING: {} constraint is currently not supported.'.format(constraint))
            print ('Supported constraints are: "symmetry", "cluster" and "modgen"')


    def write_objectives(self, group, normp=2):
        '''
        function: write to feval
        when: after all constraints has been extracted
        group: group objectives by type, such as symmetry or modgen
        normp: L-p norm. p in [1,2]. If group=False, this argument is ignored
        '''
        with open(self.feval, 'w') as fo:
            # Write headers
            fo.write('from __future__ import division\n')
            fo.write('import numpy as np\n')
            fo.write('from numpy.linalg import norm\n')
            fo.write('from aloe.layout.pylib.expr import read_expr\n\n')
            #fo.write('norm_arr = np.load(\'{}\')\n'.format(self.fnorm))

            if len(self.cstr_symmetry) > 0:
                self.write_symmetry_function(fo)
            if len(self.cstr_modgen) > 0:
                self.write_modgen_function(fo)
            if group:
                self.write_group_objectives(fo, normp)
            # Write major function
            fo.write('\ndef eval_{}(individual, file_expr):\n'.format(self.blk_name))
            if len(self.cstr_symmetry) > 0:
                fo.write('\t{} = eval_symmetry(file_expr)\n'.format(
                    ', '.join(self.names_symmetry)))
            if len(self.cstr_modgen) > 0:
                fo.write('\t{} = eval_modgen(file_expr)\n'.format(
                    ', '.join(self.names_modgen)))
            if len(self.names_constraints) == 1: #deap takes fitness value in tuple
                fo.write('\tindividual.fitness.values = ({},)\n'.format(self.names_constraints[0]))
            else:
                #fo.write('\tnorm_arr = np.load(file_norm)\n')
                fo.write('\tindividual.fitness.values = ({})\n'.format(
                    ', '.join(self.names_constraints)))

            print ('INFO: objective functions written to {}'.format(self.feval))

    def write_group_objectives(self, fo, normp):
        names_group_constraints = []
        fo.write('\ndef eval_group(individual, file_expr, file_norm):\n')
        fo.write('\tnorm_arr = np.load(file_norm)\n')
        if len(self.cstr_symmetry) > 0:
            fo.write('\t{} = eval_symmetry(file_expr)\n'.format(', '.join(self.names_symmetry)))
            fo.write('\td = norm(np.array([{}])/norm_arr, {})\n'.format(', '.join(self.names_symmetry), normp))
            names_group_constraints.append('d')
        if len(self.cstr_modgen) > 0:
            fo.write('\t{} = eval_modgen(file_expr)\n'.format(', '.join(self.names_modgen)))
            fo.write('\ts = norm(np.array([{}])/norm_arr, {})\n'.format(', '.join(self.names_modgen), normp))
            names_group_constraints.append('s')
        if len(names_group_constraints) == 1: #deap takes fitness value in tuple
            fo.write('\tindividual.fitness.values = ({},)\n'.format(names_group_constraints[0]))
        else:
            fo.write('\tindividual.fitness.values = ({})\n'.format(
                ', '.join(names_group_constraints)))

    def write_cstr_pos(self):
        start = 0
        list_cstr = []
        list_starts = []
        list_ends = []
        columns = ['constraint', 'start', 'end']

        if len(self.cstr_symmetry) > 0:
            list_cstr.append(self.cstr_dict['symmetry'])
            list_starts.append(start)
            list_ends.append(start+len(self.cstr_symmetry))
            start += len(self.cstr_symmetry)
        if len(self.cstr_modgen) > 0:
            list_cstr.append(self.cstr_dict['modgen'])
            list_starts.append(start)
            list_ends.append(start+len(self.cstr_modgen))
            start += len(self.cstr_modgen)
        data = {'constraint': list_cstr, 'start': list_starts, 'end': list_ends}
        df = pd.DataFrame(data, columns=columns)
        df.to_csv(self.fcstr_pos, sep='\t', index=False)


    def symmetry(self, fconstraint):
        '''
        fconstraint:    file exporeted from Cadence Virtuoso CIW
        function:       identify net symmetry
        when            when load_constraints() is called
        '''
        # Read constraints and extract information
        with open(fconstraint, 'r') as fi:
            string = fi.read()
            symm_net_regex = re.compile(r'\(\("(.*?)" net nil\) \("(.*?)" net')
            symm_nets = symm_net_regex.findall(string)
            nets0 = [symm_nets[idx][0] for idx in range(len(symm_nets))]
            nets1 = [symm_nets[idx][1] for idx in range(len(symm_nets))]
        # Write constraints to feval
        for pair in symm_nets:
            self.cstr_symmetry.append('abs(float(nl[\'{}\'])-float(nl[\'{}\']))'.format(
                pair[0], pair[1]))

    # Assume that the top-level module name will be mappe to I0, and that everything is under
    # The top module
    # TODO: Make this hierarchical
    def modgen(self, fconstraint, fcluster):
        '''
        fconstraint:    file exporeted from Cadence Virtuoso CIW
        function:       identify current mirrors
        when            when load_constraints() is called
        '''
        #TODO: Verify that this works for flat
        #TODO:  Verify that this works for 3 hierarchies
        cm_regex = re.compile(r'\("([\w+/]*M\d+)" inst')
        # Each element in the list_cm is a set of transistors that should be clustered
        count_cm = 0
        list_cmd = []
        with open(fconstraint, 'r') as fi:
            for string in fi.readlines():
                if 'cache' in string: # Because the cm_regex catches some false positives
                    cm = cm_regex.findall(string)
                    list_cmd.append('createInstGroup cluster{}\n'.format(count_cm))
                    list_cmd.append('addInstToInstGroup cluster{} {{{}}}\n'.format(
                        count_cm, ' '.join(cm)))
                    self.cstr_modgen.append('float(area[\'cluster{}\'])'.format(count_cm))
                    count_cm += 1

        list_cmd.append('source {}\n'.format(fcheck_group_bbx))
        with open(fcluster, 'w') as fo:
            fo.write(''.join(list_cmd))

    def write_symmetry_function(self, fo):
        '''
        Auxiliary function for write_objectives()
        '''
        fo.write('\ndef eval_symmetry(file_expr):\n')
        fo.write('\tnl = read_expr(file_expr, \'nl\')\n')
        for idx, cstr in enumerate(self.cstr_symmetry):
            fo.write('\t{}{} = {}\n'.format(self.cstr_dict['symmetry'], idx, cstr))
            self.names_symmetry.append('{}{}'.format(self.cstr_dict['symmetry'], idx))
        self.names_constraints.extend(self.names_symmetry)
        fo.write('\treturn np.array([{}])\n'.format(', '.join(self.names_symmetry)))

    def write_modgen_function(self, fo):
        '''
        Auxiliary function for write_objectives()
        '''
        fo.write('\ndef eval_modgen(file_expr):\n')
        fo.write('\tarea = read_expr(file_expr, \'area\')\n')
        for idx, cstr in enumerate(self.cstr_modgen):
            fo.write('\t{}{} = {}\n'.format(self.cstr_dict['modgen'], idx, cstr))
            self.names_modgen.append('{}{}'.format(self.cstr_dict['modgen'], idx))
        self.names_constraints.extend(self.names_modgen)
        fo.write('\treturn np.array([{}])\n'.format(', '.join(self.names_modgen)))


# TODO: names of the performances for plotting
    def write_usr(self):
        fusrtmp = '{}_tmp.{}'.format(self.fusr.rsplit('.', 1)[0], self.fusr.rsplit('.', 1)[1])
        subprocess.call(['cp', self.fusr, fusrtmp])
        with open(fusrtmp, 'r') as fi:
            with open(self.fusr, 'w') as fo:
                for line in fi:
                    if line.startswith('perf = '):
                        fo.write('perf = {}\n'.format(self.names_constraints))
                    elif line.startswith('perf_type = '):
                        fo.write('perf_type = {}\n'.format(['min']*len(self.names_constraints)))
                    elif line.startswith('perf_group_type = '):
                        _n = (len(self.cstr_symmetry)>0) + (len(self.cstr_modgen)>0)
                        fo.write('perf_group_type = {}\n'.format(['min']*_n))
                    else:
                        fo.write(line)
        subprocess.call(['rm', '-rf', fusrtmp])

    # @staticmethod
    # def cal_fitness_weights(perf_type):
    #     '''
    #     perf_type: list of strings for the optimization type (min or max)
    #     wgt_list: list of fitness weights to be used in NSGAII alogrithms
    #     auxiliary to write_ea()
    #     '''
    #     wgt_lst = [None]*len(perf_type)
    #     for idx, obj in enumerate(perf_type):
    #         if obj.lower() in ['min', 'minimize']:
    #             wgt_lst[idx] = -1.0
    #         elif obj.lower() in ['max', 'maximize']:
    #             wgt_lst[idx] = 1.0
    #         else:
    #             print 'Invalid performance type. Please check your def_ip.py.'
    #             print 'Available options are: {min, max}'
    #     return tuple(wgt_lst)    # This runs faster and the code is cleaner

    # def write_ea(self):



if __name__ == '__main__':

    # Test setup
    cwd = os.getcwd()
    dir_cstr = os.path.join(prep_dir, 'data')
    feval = os.path.join(pnr_dir, 'evaluate.py')
    fusr = os.path.join(pnr_dir, 'usr_ip.py')
    fnorm = os.path.join(pnr_dir, 'norm_arr.np')
    fcstr_pos = os.path.join(pnr_dir, 'cstr_pos.df')
    # For clusters
    fcheck_group_bbx = os.path.join(tcllib, 'areaRatio.tcl')
    fcluster = os.path.join(pnr_dir, 'cluster.tcl')

    # Functions
    objFunc = ObjectiveFunctions(dir_cstr, fusr, feval, fnorm, fcstr_pos, fcluster)
    objFunc.load_constraints()
    objFunc.write_objectives(group=group, normp=2)
    objFunc.write_cstr_pos()
    objFunc.write_usr()
