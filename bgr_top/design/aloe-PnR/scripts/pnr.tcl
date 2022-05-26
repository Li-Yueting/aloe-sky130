

setMaxRouteLayer 5
setDesignMode -process 16 -flowEffort standard

# power routing mode
setViaGenMode -reset
setViaGenMode -optimize_cross_via true
setViaGenMode -optimize_via_on_routing_track true
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false

# placement mode
setPlaceMode -checkDiffusionWidth true ;
setPlaceMode -coreEffort high ;

# # tech lib variables
# #setFillerMode -core {FILL128_A9TL_C16 FILL4_A9TL_C16 FILLSGCAP3_A9TL_C16 FILLSGCAP8_A9TL_C16 FILLXGCAP4_A9TL_C16 FILL16_A9TL_C16 FILL64_A9TL_C16 FILLSGCAP4_A9TL_C16 FILLTIE14_A9TL_C16 FILLXGCAP5_A9TL_C16 FILL1_A9TL_C16 FILL8_A9TL_C16 FILLSGCAP5_A9TL_C16 FILLXGCAP128_A9TL_C16 FILLXGCAP64_A9TL_C16 FILL2_A9TL_C16 FILLSGCAP128_A9TL_C16 FILLSGCAP64_A9TL_C16 FILLXGCAP16_A9TL_C16 FILLXGCAP6_A9TL_C16 FILL32_A9TL_C16 FILLSGCAP16_A9TL_C16 FILLSGCAP6_A9TL_C16 FILLXGCAP32_A9TL_C16 FILLXGCAP7_A9TL_C16 FILL3_A9TL_C16 FILLSGCAP32_A9TL_C16 FILLSGCAP7_A9TL_C16 FILLXGCAP3_A9TL_C16 FILLXGCAP8_A9TL_C16} -corePrefix FILLER
# # nanoroute mode
setNanoRouteMode -routeExpAdvancedTechnology true ;  # mainly for metal patching; it may be default later
# #setNanoRouteMode -routeTopRoutingLayer 6 
setNanoRouteMode -routeBottomRoutingLayer 2 \
				 -drouteAutoStop false \
				 -drouteExpAdvancedMarFix true \
				 -drouteFixAntenna true \
				 -drouteUseMultiCutViaEffort high \
				 -routeWithTimingDriven false \
				 -routeWithSiDriven false \
				 -routeAutoPinAccessForBlockPin true \
				 -routeConcurrentMinimizeViaCountEffort high
# 				 #-routeWithViaInPin 1:1
# 				 # Always use vias for access to Metal1 standard cell pins. Metal2 and above can use vias or planar access.
# # register all tech sites
# #createRow -site sc9mcpp96c_cln16fcll001
# #createRow -site core
# #createRow -site CoreP -flip1st
# #createRow -site Core2P
# #createRow -site Core
# #createRow -site Core2
# #createRow -site Core4
# #createRow -site Core8

setStreamOutMode -textSize 0.1


# if {[file exists $::env(pnr_dir)/cluster.tcl]} {
#   source $::env(pnr_dir)/cluster.tcl
# }


# So that exported power and ground will not have ":" added to the end
setStreamOutMode -virtualConnection false

# add well tap
# Integer multiple of SITE width
#addWellTap -cell $tapCell -cellInterval $tapDistance -prefix WELLTAP

# Expand FP to accomodate for welltap. Currrently 0.9 microns wide
#resizeFP -xSize +1.080
# floorplan
#floorPlan -site core -r 1 0.5 0.0 0.0 0.0 0.0
#floorPlan -site Core -r 2 0.2 0.0 0.0 0.0 0.0
# sroute
# ONETIME
globalNetConnect VDD -type tiehi -pin VDD -inst *
globalNetConnect VSS -type tielo -pin VSS -inst *
globalNetConnect VDD -type tiehi -pin VPWR -inst *
globalNetConnect VSS -type tielo -pin VGND -inst *
globalNetConnect VDD -type tiehi -pin VPB -inst *
globalNetConnect VSS -type tielo -pin VNB -inst *
globalNetConnect VDD -type pgpin -pin VPWR -inst *
globalNetConnect VSS -type pgpin -pin VGND -inst *


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

setPlaceMode -place_detail_color_aware_legal true -place_global_place_io_pins true
place_design -noPrePlaceOpt

# route
selectNet *
# deselectNet {VDD}
# deselectNet {VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail