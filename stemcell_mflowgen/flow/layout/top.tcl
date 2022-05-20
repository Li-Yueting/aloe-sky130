source ex_gen.tcl
source sc_gen.tcl
# set output folder path
# set output_folder ../skywater-130nm-analog-adk

set script_path [ file dirname [ file normalize [ info script ] ] ]
set script_path [file dirname $script_path]
# set a [file join a b $script_path skywater-130nm-analog-adk]
# puts "a is: $a"
append script_path /skywater-130nm-analog-adk
puts "script_path: $script_path"
### generate mag, lef files

### pmos
# flush
# place_pmos 0 0 2 1 1
# addlef pmos_1 $script_path
# flush
# place_pmos 0 0 2 6 1
# addlef pmos_6 $script_path
# flush
# place_pmos 0 0 2 9 1
# addlef pmos_9 $script_path
# flush
# place_pmos 0 0 2 12 1
# addlef pmos_12 $script_path
# flush
# place_pmos 0 0 2 60 1
# addlef pmos_60 $script_path
# ### nmos
# flush
# place_nmos 0 0 2 1 1
# addlef nmos_1 $script_path
# ### pnp
# flush
# place_pnp_1 0 0 1
# addlef pnp_1 $script_path
# flush 
# place_pnp 0 0 7 1
# addlef pnp_7 $script_path
flush 
place_pnp 0 0 8 1
# addlef pnp_8 $script_path
# ### resistor
# flush
# place_res_1 0 0 1
# addlef res_1 $script_path
# flush
# place_res_2 0 0 1
# addlef res_2 $script_path
# ### capacitor
# flush
# place_cap_1 0 0 1
# addlef cap_1 $script_path
