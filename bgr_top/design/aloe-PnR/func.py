import random
import os

def cal_fitness(current_gen):
    print('dididi')


def assign_netweight(base_file, new_list, out_dir):
    ofile = open(out_dir+"/netweight.tcl", 'w')
    with open(base_file, 'r') as file:
        new_lines = []
        old_lines = file.readlines()
        for i, line in enumerate(old_lines):
            ori = line.split()[:-1]
            ori.append(str(new_list[i])+'\n')
            new = ' '.join(ori)
            new_lines.append(new)
    print(new_lines)
    ofile.writelines(new_lines)
    ofile.close()
        

if __name__ == "__main__":
    '''
    # NOTE: debug for assign_netweight 
    bf = 'netweight.tcl'
    new_list = random.sample(range(1, 100), 40)
    print(new_list)
    out_dir = 'gen-0-id-0' 
    lines = assign_netweight(bf, new_list, out_dir)
    '''