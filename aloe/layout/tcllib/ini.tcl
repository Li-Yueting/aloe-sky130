set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set _timing_save_restore_compression_mode hybrid
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net VSS
set init_mmmc_file mmmc.view
set init_io_file {}
set init_lef_file {/home/pohsuan/transfer/repo.git/aloe/layout/engine/data/lef/*.tlef \
    /home/pohsuan/transfer/repo.git/aloe/layout/engine/data/lef/*.lef}
set init_pwr_net VDD
set init_top_cell bias_gen_bk
set init_verilog /home/pohsuan/repo.git/aloe/layout/input/bias_gen_bk.v
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
set report_inactive_arcs_format {from to when arc_type sense reason}
set timing_library_load_pin_cap_indices {}
set timing_library_write_library_to_directory {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set init_design_uniquify 1
init_design

setMaxRouteLayer 5
setDesignMode -process 16 -flowEffort standard

# power routing mode
setViaGenMode -optimize_cross_via true
setViaGenMode -optimize_via_on_routing_track true

# placement mode
setPlaceMode -checkDiffusionWidth true ;
setPlaceMode -coreEffort high ;

# tech lib variables
#setFillerMode -core {FILL128_A9TL_C16 FILL4_A9TL_C16 FILLSGCAP3_A9TL_C16 FILLSGCAP8_A9TL_C16 FILLXGCAP4_A9TL_C16 FILL16_A9TL_C16 FILL64_A9TL_C16 FILLSGCAP4_A9TL_C16 FILLTIE14_A9TL_C16 FILLXGCAP5_A9TL_C16 FILL1_A9TL_C16 FILL8_A9TL_C16 FILLSGCAP5_A9TL_C16 FILLXGCAP128_A9TL_C16 FILLXGCAP64_A9TL_C16 FILL2_A9TL_C16 FILLSGCAP128_A9TL_C16 FILLSGCAP64_A9TL_C16 FILLXGCAP16_A9TL_C16 FILLXGCAP6_A9TL_C16 FILL32_A9TL_C16 FILLSGCAP16_A9TL_C16 FILLSGCAP6_A9TL_C16 FILLXGCAP32_A9TL_C16 FILLXGCAP7_A9TL_C16 FILL3_A9TL_C16 FILLSGCAP32_A9TL_C16 FILLSGCAP7_A9TL_C16 FILLXGCAP3_A9TL_C16 FILLXGCAP8_A9TL_C16} -corePrefix FILLER
# nanoroute mode
setNanoRouteMode -routeExpAdvancedTechnology true ;  # mainly for metal patching; it may be default later
#setNanoRouteMode -routeTopRoutingLayer 6 
setNanoRouteMode -routeBottomRoutingLayer 2 \
				 -drouteAutoStop false \
				 -drouteExpAdvancedMarFix true \
				 -drouteFixAntenna true \
				 -drouteUseMultiCutViaEffort high \
				 -routeWithTimingDriven false \
				 -routeWithSiDriven false \
				 -routeAutoPinAccessForBlockPin true \
				 -routeConcurrentMinimizeViaCountEffort high
				 #-routeWithViaInPin 1:1
				 # Always use vias for access to Metal1 standard cell pins. Metal2 and above can use vias or planar access.
# register all tech sites
#createRow -site sc9mcpp96c_cln16fcll001
#createRow -site core
#createRow -site CoreP -flip1st
#createRow -site Core2P
#createRow -site Core
#createRow -site Core2
#createRow -site Core4
#createRow -site Core8
setStreamOutMode -textSize 0.1
if {[file exists $::env(pnr_dir)/cluster.tcl]} {
  source $::env(pnr_dir)/cluster.tcl
}
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
globalNetConnect VDD -type tiehi -pin VNW -inst *
globalNetConnect VSS -type tielo -pin VPW -inst *
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type pgpin -pin VNW -inst *
globalNetConnect VSS -type pgpin -pin VPW -inst *




#sroute -connect { corePin } -layerChangeRange { M1(1) M1(1) } -blockPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 0 -crossoverViaLayerRange { M1(1) M1(1) } -nets { VDD VSS } -allowLayerChange 0 -targetViaLayerRange { M1(1) M1(1) }
