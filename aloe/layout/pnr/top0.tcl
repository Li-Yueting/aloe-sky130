set time_start_all [clock seconds]
setDistributeHost -local
set ::env(gen) 0
# set ::env(repo) /home/users/xingyuni/ee372/aloe-sky130
set ::env(pnr_dir) /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/pnr
set tcllib /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/tcllib
source $tcllib/cal_nl.tcl
source $tcllib/areaRatio.tcl
source $tcllib/swap_cells.tcl
source $tcllib/pnr.tcl
source $tcllib/save_lvs_netlist.tcl
source $env(pnr_dir)/suppr_msg.tcl
# source $env(pnr_dir)/get_cells.tcl
# cd $env(repo)
# python -m aloe.layout.pylib.write_tech
# python -m aloe.layout.pylib.write_pins
cd $env(pnr_dir)
source $env(pnr_dir)/ini.tcl
source $env(pnr_dir)/tech.tcl
# if {[file exists $env(pnr_dir)/ndr.tcl]} {
#     source $env(pnr_dir)/ndr.tcl
# }
source $env(pnr_dir)/run0_bgr.tcl
source $env(pnr_dir)/run_signoff.tcl

