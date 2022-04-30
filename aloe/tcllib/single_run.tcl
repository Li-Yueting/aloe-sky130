source ../inputs/vars.tcl
source $inputs/adk/adk.tcl
source $tcllib/functions.tcl
set time_start_all [clock seconds]
setDistributeHost -local
# setup input files
set init_layout_view ""
set init_abstract_name ""
set init_verilog  "$inputs/$inst_name.v"
set init_mmmc_file "$inputs/view_definition.tcl"
set init_lef_file "$inputs/adk/rtk-tech.lef $inputs/adk/stdcells.lef $inputs/adk/rtk-tech.lef $inputs/adk/stdcells.lef"
set init_top_cell "$inst_name"
set init_gnd_net "VSS VPW VSSPST VSSE"
set init_pwr_net "VDD VNW VDDPST POC VDDCE VDDPE"
# init_design breakdown substeps
init_design
# Step-6: cadence-innovus-power  
globalNetConnect VDD -type pgpin -pin VPWR -inst * -verbose
globalNetConnect VSS -type pgpin -pin VGND -inst * -verbose
globalNetConnect VSS -type pgpin -pin VNB -inst * -verbose
globalNetConnect VDD -type pgpin -pin VPB -inst * -verbose
source $inputs/power-strategy-singlemesh.tcl
# Step-7&8: cadence-innovus-place&route
place_design
selectNet *
deselectNet {VDD}
deselectNet {VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
### TODO: add fillers
cal_nl -l 1 -d $outputs -b $inst_name
write_lef_abstract -5.8 -extractBlockObs $aloe_home/output/design.lef
### TODO save_lvs_netlist, check drc


