set ::TimeLib::tsgMarkCellLatchConstructFlag 1
set _timing_save_restore_compression_mode hybrid
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net {VSS}
set init_mmmc_file inputs/innovus-foundation-flow/view_definition.tcl
set init_io_file {}
set init_lef_file {inputs/adk/rtk-tech.lef inputs/adk/stdcells.lef}
set init_pwr_net {VDD}
set init_top_cell bgr_top
set init_verilog inputs/design.v
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
setViaGenMode -reset
setViaGenMode -optimize_cross_via true
setViaGenMode -optimize_via_on_routing_track true
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false

# placement mode
setPlaceMode -checkDiffusionWidth true ;
setPlaceMode -coreEffort high ;

# nanoroute mode
setNanoRouteMode -routeExpAdvancedTechnology true ;  # mainly for metal patching; it may be default later
# setNanoRouteMode -routeTopRoutingLayer 6 
setNanoRouteMode -routeBottomRoutingLayer 2 \
				 -drouteAutoStop false \
				 -drouteExpAdvancedMarFix true \
				 -drouteFixAntenna true \
				 -drouteUseMultiCutViaEffort high \
				 -routeWithTimingDriven false \
				 -routeWithSiDriven false \
				 -routeAutoPinAccessForBlockPin true \
				 -routeConcurrentMinimizeViaCountEffort high

setStreamOutMode -textSize 0.1

# So that exported power and ground will not have ":" added to the end
setStreamOutMode -virtualConnection false
globalNetConnect VDD -type pgpin -pin VPWR -inst *
globalNetConnect VSS -type pgpin -pin VGND -inst *


