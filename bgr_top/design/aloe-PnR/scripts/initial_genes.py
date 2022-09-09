import os
import random
import numpy as np


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
    # print(new_lines)
    ofile.writelines(new_lines)
    ofile.close()

if __name__ == "__main__":    
    min_netweight = int(os.getenv("min_netweight"))
    max_netweight = int(os.getenv("max_netweight"))
    pop_size = int(os.getenv("pop_size"))
    num_of_net = int(os.getenv("num_of_net"))
    out_file = os.getenv("base_dir")+"/summary/gen_0_genes.txt"
    # START HERE
    initial_genes = np.array([([random.choice(range(min_netweight, max_netweight)) for i in range(num_of_net)]) for j in range(pop_size)])
    np.savetxt(out_file, initial_genes, fmt='%i', delimiter=',')
    os.system("rm -rf "+os.getenv("base_dir")+'/gen*')
    for id, gene in enumerate(initial_genes):
        new_dir = os.getenv("base_dir") + '/gen_0_id_'+str(id)
        cmd = 'mkdir ' +  new_dir
        os.system(cmd)
        assign_netweight(os.getenv("base_dir")+'/netweight.tcl', gene, new_dir)
    print(initial_genes)
# with open(os.getenv("base_dir")+"/initial_genes.txt", 'w') as file:
#     file.write(initial_genes)
