select top cell



# for {set n 0} {$n<=31} {set n [expr $n + 1]} {
#     set ori_l [format "in_%d" $n]
#     set new_l [format "in\[%d\]" $n]
#     findlabel $ori_l
#     erase label
#     paint m1
#     label $new_l FreeSans 30
#     port make
#     port class inout
#     port use signal
# }

# for {set n 0} {$n<=31} {set n [expr $n + 1]} {
#     set ori_l [format "en%d_b" $n]
#     set new_l [format "en_b\[%d\]" $n]
#     findlabel $ori_l
#     erase label
#     paint m2
#     label $new_l FreeSans 30
#     port make
#     port class inout
#     port use signal
# }

findlabel en
erase label
paint m2
label s_en FreeSans 30
port make
port class inout
port use signal

findlabel en_b
erase label
paint m2
label s_en_b FreeSans 30
port make
port class inout
port use signal