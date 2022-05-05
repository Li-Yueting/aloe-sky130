####################################################################
# Innovus Foundation Flow Code Generator, Sun Apr 24 15:53:42 PDT 2022
# Version : 19.11-s001_1
####################################################################

loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp

# <BEGIN TAG> place,set_design_mode
setDesignMode -process 130 -powerEffort high

# <END TAG> place,set_design_mode
# <BEGIN TAG> prects,set_analysis_mode
setAnalysisMode -analysisType onChipVariation

# <END TAG> prects,set_analysis_mode
# <BEGIN TAG> place,set_place_mode
setPlaceMode -place_global_cong_effort low \
   -place_global_clock_gate_aware true \
   -place_global_place_io_pins false

# <END TAG> place,set_place_mode
# <BEGIN TAG> place,set_opt_mode
# setOptMode -fixFanoutLoad true

# <END TAG> place,set_opt_mode

# <END TAG> place,initialize_step
Puts "<FF> RUNNING PLACEMENT ..."
#
# RUNNING PLACEMENT
#
puts "<FF> Plugin -> pre_place_tcl"
# <BEGIN TAG> place,place_design
# place_opt_design -out_dir reports -prefix place
# set_interactive_constraint_modes {func1 test} > set_disable_timing -from out -to in [get_cells {inv5 inv1}] > set_interactive_constraint_modes {}
# set_disable_timing
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
# set_disable_timing {inv5 inv1 inv2 inv3 inv4}
# setPlaceMode -prerouteAsObs
place_design 

# route
selectNet *
deselectNet {VDD}
deselectNet {VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail

# calculate net length
cal_nl -n 3 -l 1 -d /home/users/xingyuni/ee372/aloe-sky130/aloe/output/nl -b ringosc

# write lef file
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/output/lef/ringosc.lef