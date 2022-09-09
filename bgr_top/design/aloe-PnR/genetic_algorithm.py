# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.

import os
import random
import numpy as np
from func import assign_netweight, cal_fitness


# def log(i, a, b):
#     print("epoch --> ",
#           str(i + 1).rjust(5, " "), " max:",
#           str(round(a, 4)).rjust(8, " "), "mean:",
#           str(round(b, 4)).rjust(8, " "), "alpha:",
#           str(round(a / b, 4)).rjust(8, " "))
#     print("fitness:  ", b)

class GeneSolve:
    ## 初始定义，（初始种群数，最大迭代数，交叉概率，变异概率，最大适应度/平均适应度(扰动率趋于平稳则越接近1越好））
    def __init__(self, pop_size, epoch, cross_prob, mutate_prob, alpha, print_batch=1):
        self.pop_size = pop_size
        self.epoch = epoch
        self.cross_prob = cross_prob
        self.mutate_prob = mutate_prob
        self.print_batch = print_batch
        self.alpha = alpha
        self.width = num_of_net
        self.best = None
        self.genes = np.array(
                [([random.choice(range(min_netweight, max_netweight)) for i in range(self.width)]) for j in range(self.pop_size)])

    def inter_cross(self):
        """对染色体进行交叉操作"""
        ready_index = list(range(self.pop_size))
        while len(ready_index) >= 2:
            d1 = random.choice(ready_index)
            ready_index.remove(d1)
            d2 = random.choice(ready_index)
            ready_index.remove(d2)
            if np.random.uniform(0, 1) <= self.cross_prob:
                    loc = random.choice(range(1, self.width - 1))
                    d1_a, d1_b = list(self.genes[d1][0:loc]), list(self.genes[d1][loc:])
                    d2_a, d2_b = list(self.genes[d2][0:loc]), list(self.genes[d2][loc:])
                    self.genes[d1] = d1_a + d2_b
                    self.genes[d2] = d2_a + d1_b

    def mutate(self):
        """基因突变"""
        ready_index = list(range(self.pop_size))
        for i in ready_index:
            if np.random.uniform(0, 1) <= self.mutate_prob:
                loc = random.choice(range(0, self.width))
                t0 = list(self.genes[i])
                t0[loc] = random.choice(range(min_netweight, max_netweight))
                self.genes[i] = t0

    def get_adjust(self):
        """ fitness interface! """
        for index, nw in enumerate(self.genes):
            # print('epoch is:', index, 'netweight is:', nw)
            basedir = '/home/users/lyt1314/ee372/aloe-sky130/bgr_top/interface/'
            # make dirs
            out_dir = basedir + 'gen-' + str(self.current_gen) + '-id-'+str(index)
            cmd = "mkdir "+ out_dir
            os.system(cmd)
            
            # assign netweight 
            assign_netweight('netweight.tcl', nw, out_dir)
            return 0

        # x = [random.choice(range(min_netweight, max_netweight)) for i in range(self.width)]
        # calculate fitness
        x = cal_fitness(self.current_gen, basedir)


        print("Curent-gen:", self.current_gen, "  Genes", self.genes.shape, "  Fitness:", x)
        return x

    def cycle_select(self):
        """通过轮盘赌来进行选择"""
        adjusts = self.get_adjust()
        if self.best is None or np.max(adjusts) > self.best[1]:
            self.best = self.genes[np.argmax(adjusts)], np.max(adjusts)
        p = adjusts / np.sum(adjusts)
        cu_p = []
        for i in range(self.pop_size):
            cu_p.append(np.sum(p[0:i]))
        cu_p = np.array(cu_p)
        r0 = np.random.uniform(0, 1, self.pop_size)
        sel = [max(list(np.where(r > cu_p)[0]) + [0]) for r in r0]
        adjusts=np.array(adjusts)
        # 保留最优的个体
        if np.max(adjusts[sel]) < self.best[1]:
            self.genes[sel[np.argmin(adjusts[sel])]] = self.best[0]
        self.genes = self.genes[sel]


    def evolve(self):
        """逐代演化"""
        for i in range(self.epoch):
            # print('epoch -->', i)
            # print('genes', self.genes.shape)
            self.current_gen = i
            self.cycle_select()  # 种群选取
            self.inter_cross()  # 染色体交叉
            self.mutate()  # 变异
        self.current_gen = self.epoch
        self.get_adjust()
        print("Evolution ends !!! ")


if __name__ == "__main__":

    directory_path = os.getcwd()
    print(directory_path)
    # min_netweight = 0
    # max_netweight = 30
    # num_of_net = 40
    # a=GeneSolve(20, 6, 0.3, 0.1, 0.95)
    # a.evolve()



