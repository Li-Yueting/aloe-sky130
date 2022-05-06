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
# Step-5: cadence-innovus-init
set init_design_uniquify 1
init_design 
# um::enable_metrics -on
# um::push_snapshot_stack
# set_power_analysis_mode -analysis_view analysis_default
# setMaxRouteLayer 6
# setDesignMode -process 130 -powerEffort high
# checkDesign -all
source $inputs/floorplan.tcl
# source $inputs/add-endcaps-welltaps.tcl
source $inputs/pin-assignments.tcl
# # Step-6: cadence-innovus-power  
globalNetConnect VDD -type pgpin -pin VPWR -inst * -verbose
globalNetConnect VSS -type pgpin -pin VGND -inst * -verbose
globalNetConnect VSS -type pgpin -pin VNB -inst * -verbose
globalNetConnect VDD -type pgpin -pin VPB -inst * -verbose
source -verbose $inputs/power-strategy-singlemesh.tcl 
# # Step-7,8: cadence-innovus-place&route
# # source $inputs/setup-cellpad.tcl
# source $inputs/setup-inst-gap.tcl
setDesignMode -process 130 -powerEffort high
# setAnalysisMode -analysisType onChipVariation
# setPlaceMode -place_global_cong_effort medium \
#    -place_global_clock_gate_aware true \
#    -place_global_place_io_pins false
place_design
# selectNet *
# deselectNet {VDD}
# deselectNet {VSS}
# setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
win
#  -globalDetail
### TODO: add fillers
# cal_nl -n 0 -l 1 -d $outputs -b $inst_name
# write_lef_abstract -5.8 -extractBlockObs $outputs/design.lef

### TODO save_lvs_netlist, check drc


