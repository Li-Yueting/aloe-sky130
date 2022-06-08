select top cell
erase label 

box 805.00 20582.00 861.00 21105.00
paint m2
box 1027.00 20777.00 1096.00 21106.00
paint m2
box 2842.00 20690.00 2941.00 20758.00
paint m1

# out 
box 2862.00 20690.00 2941.00 20758.00
label out FreeSans 30
port make 
port class inout
port use signal

for {set n 0} {$n<32} {set n [expr $n + 1 ]} {
    # label enx_b
    set a [expr 31-$n]
    set l [format "en%d_b" $a]
    box 2897 [expr 1009+$n*643.50] [expr 2897+26] [expr 1009+$n*643.50+26]
    label $l FreeSans 30 
    port make 
    port class inout
    port use signal

    # label in_x
    set l [format "in_%d" $a]
    box 0 [expr 763.5+$n*643.50] [expr 0+17] [expr 763.5+$n*643.50+17]
    label $l FreeSans 30
    port make 
    port class inout
    port use signal
}
# en_b
box 896.00 21103.00 926.00 21130.00 
label en_b FreeSans 30
port make 
port class inout
port use signal

# en
box 965.00 21103.00 993.00 21130.00
label en FreeSans 30
port make 
port class inout
port use signal

# VGND
box 805.00 21057.00 861.00 21094.00
label VDD FreeSans 30
port make 
port class inout
port use ground

# VPWR
box 1029.00 21057.00 1093.00 21094.00
label VSS FreeSans 30
port make 
port class inout
port use power

box 798.00 -20.00 1098.00 601.00
erase m2
box 2841 54 2874 792
erase m1
box 1026.00 596.00 1135.00 809.00
erase m2

box -66.00 561.00 48.00 21045.00
erase m2