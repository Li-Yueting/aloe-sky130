# This is a sample Python script.

# Press Shift+F10 to execute it or replace it with your code.
# Press Double Shift to search everywhere for classes, files, tool windows, actions, and settings.


import random
import numpy as np

min_netweight = 0
max_netweight = 20
num_of_net = 30

def log(i, a, b):
    print("epoch --> ",
          str(i + 1).rjust(5, " "), " max:",
          str(round(a, 4)).rjust(8, " "), "mean:",
          str(round(b, 4)).rjust(8, " "), "alpha:",
          str(round(a / b, 4)).rjust(8, " "))

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
        """计算适应度"""
        x = [random.choice(range(min_netweight, max_netweight)) for i in range(self.width)]
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
            self.cycle_select()  # 种群选取
            self.inter_cross()  # 染色体交叉
            self.mutate()  # 变异
            a, b = np.max(self.get_adjust()), np.mean(self.get_adjust())
            if i % self.print_batch == self.print_batch - 1 or i == 0:
                log(i, a, b)
            if a / b < self.alpha:
                log(i, a, b)
                print("Evolution ends, the algorithm converges！Evolved for ", i + 1, " generations！")
                break

a=GeneSolve(20,50,0.3,0.1,0.95)
a.evolve()



