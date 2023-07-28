# unit is lambda to suit magic
# tg=transmission gate, sw=switch_5t, sp=seperaion between tg and sw 

set tg_w 749.5
set tg_h 557
set sw_w 1554.5
set sw_h 559
set sp 30
set h_diff 19
# place tg, sw
box 0 [expr -$tg_h/2] 0 [expr -$tg_h/2]
getcell transmission_gate

box [expr 0+$tg_w+$sp] [expr -$sw_h/2-$h_diff] [expr 0+$tg_w+$sp] [expr -$sw_h/2-$h_diff]
getcell switch_5t

# route 
# connect tg:out -> sw:in
box 739 -55.5 784 -38.5
paint m1
