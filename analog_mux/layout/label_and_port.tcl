select top cell
erase label 

for {set n 0} {$n<32} {set n [expr $n + 1 ]} {
    # label enx_b
    set a [expr 31-$n]
    set l [format "en%d_b" $a]
    box 2897 [expr 1009+$n*643.50] [expr 2897+26] [expr 1009+$n*643.50+26]
    label $l FreeSans 30 

    # label in_x
    set l [format "in_%d" $a]
    box 0 [expr 763.5+$n*643.50] [expr 0+17] [expr 763.5+$n*643.50+17]
    label $l FreeSans 30
}

box 896.00 21103.00 926.00 21130.00 
label en_b FreeSans 30
box 965.00 21103.00 993.00 21130.00
label en FreeSans 30

box 805.00 21046.00 861.00 21094.00
label VPWR FreeSans 30
box 1029.00 21047.00 1093.00 21094.00
label VGND FreeSans 30

box 798.00 -20.00 1098.00 601.00
erase m2
box 2841 54 2874 792
erase m1
box 1026.00 596.00 1135.00 809.00
erase m2