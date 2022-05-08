source lef_gen.tcl
source sc_gen.tcl
# set output folder path
# set output_folder ../skywater-130nm-analog-adk

set script_path [ file dirname [ file normalize [ info script ] ] ]
set script_path [file dirname $script_path]
# set a [file join a b $script_path skywater-130nm-analog-adk]
# puts "a is: $a"
append script_path /skywater-130nm-analog-adk
puts "script_path: $script_path"
# generate mag, lef files
# place_nmos 0 0 2 1 4
place_res_2 0 0 2
# place_pnp 0 0 7 1
# addlef pnp $script_path
addlef res $script_path
# addlef pmos $script_path
