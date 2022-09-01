#=========================================================================
# pin-assignments.tcl
#=========================================================================
# The ports of this design become physical pins along the perimeter of the
# design. The commands below will spread the pins along the left and right
# perimeters of the core area. This will work for most designs, but a
# detail-oriented project should customize or replace this section.
#
# Author : Christopher Torng
# Date   : March 26, 2018

#-------------------------------------------------------------------------
# Pin Assignments
#-------------------------------------------------------------------------

# Take all ports and split into halves

set all_ports       [dbGet top.terms.name -v *clk*]

set num_ports       [llength $all_ports]
set half_ports_idx  [expr $num_ports / 2]

set pins_left_half  [lrange $all_ports 0               [expr $half_ports_idx - 1]]

set pins_right_half [lrange $all_ports $half_ports_idx [expr $num_ports - 1]     ]

# Take all clock ports and place them center-left

# set clock_ports     [dbGet top.terms.name *clk*]
set half_left_idx   [expr [llength $pins_left_half] / 2]
puts "pins_left_half: $pins_left_half"
puts "half_left_idx: $pins_left_half"
# if { $clock_ports != 0 } {
#   for {set i 0} {$i < [llength $clock_ports]} {incr i} {
#     set pins_left_half \
#       [linsert $pins_left_half $half_left_idx [lindex $clock_ports $i]]
#   }
# }

# Spread the pins evenly across the left and right sides of the block

# set ports_layer M3
# editPin -layer met2 -pin $pins_left_half  -side LEFT  -spreadType SIDE
# editPin -layer met3 -pin $pins_right_half -side RIGHT -spreadType SIDE
# editPin -layer met3 -pin vbg -assign 292.5 55
# editPin -layer met3 -pin porst -assign 292.5 142 
editPin -layer met3 -pin $all_ports -side LEFT -spreadType SIDE
editPin -layer met3 -pin $all_ports -side TOP -spreadType SIDE
