
# ol=one_line, sp_h=seperation height between one_line elements
load analog_mux

set ol_w 3117
set ol_h 623.5
set sp_h 20
set line_count 32
set cell_name one_line

# place lines
for {set n 0} {$n<$line_count} {set n [expr $n + 1]} {
    box 0 [expr $n*($ol_h+$sp_h)] 0 [expr $n*($ol_h+$sp_h)]
    getcell $cell_name
}

