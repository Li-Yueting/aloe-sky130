set time_start_all [clock seconds]
setDistributeHost -local
set ::env(gen) 0
set ::env(pnr_dir) /home/users/xingyuni/ee372/aloe-sky130/stemcell_mflowgen/flow/aloe_mflowgen/design/aloe/layout/pnr
set tcllib /home/users/xingyuni/ee372/aloe-sky130/stemcell_mflowgen/flow/aloe_mflowgen/design/aloe/layout/tcllib
source $tcllib/cal_nl.tcl
source $tcllib/areaRatio.tcl
# source $tcllib/pnr.tcl
# source $tcllib/save_lvs_netlist.tcl
source $env(pnr_dir)/suppr_msg.tcl
cd $env(pnr_dir)