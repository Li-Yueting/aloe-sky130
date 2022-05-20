#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue May 17 13:28:39 2022                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.13-s083_1 (64bit) 01/19/2021 16:51 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.13-s083_1 NR201221-0721/20_13-UB (database version 18.20.538) {superthreading v2.13}
#@(#)CDS: AAE 20.13-s024 (64bit) 01/19/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.13-s042_1 () Jan 14 2021 08:49:42 ( )
#@(#)CDS: SYNTECH 20.13-s015_1 () Jan  6 2021 07:44:41 ( )
#@(#)CDS: CPE v20.13-s092
#@(#)CDS: IQuantus/TQuantus 20.1.1-s453 (64bit) Fri Nov 20 21:16:44 PST 2020 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
setDistributeHost -local
define_proc_arguments cal_nl -info {Writes TCL scripts to run.
} -define_args {{-n "current run number" "int_value" int required}
    {-l "length of zero-padding" "int_value" int required}
    {-d "expression directory" "none" string required}
    {-b "blk_name" "none" string optional}
    }
define_proc_arguments areaRatio -info {Compute the ratio of the group-elements-cumulated-area to the group-bounding-box-area. 
} -define_args {
    {-group "Group name" "none" string {required}}
  }
define_proc_arguments swap_cells -info {Writes TCL scripts to run.
} -define_args {{-net "net name" "none" string required}
    {-tail "tied cell identifying string" "none" string optional}
    }
define_proc_arguments pnr -info {Writes TCL scripts to run.
} -define_args {{-g "generation" "none" string required}
	{-gennum "generation num" "int_value" int required}
	{-n "population size" "int_value" int required}
	{-pnr_dir "place and route directroy" "none" string required}
	{-t "timed" "" boolean optional}
	}
define_proc_arguments save_lvs_netlist -define_args {{-dcapNamePattern "regex pattern of dcaps" "none" string required} {-fVerilog "file name to be saved" "none" string required} {-flat "export flat or hierarchical verilog" "" boolean optional} }
set_message -id NRIG-39 -suppress
set_message -id IMPLF-201 -suppress
set_message -id IMPLF-44 -suppress
set_message -id IMPSP-9513 -suppress
set_message -id IMPSP-9514 -suppress
set_message -id IMPDB-2078 -suppress
setMessageLimit 5
set ::TimeLib::tsgMarkCellLatchConstructFlag 1
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set _timing_save_restore_compression_mode hybrid
set conf_qxconf_file NULL
set conf_qxlib_file NULL
set defHierChar /
set distributed_client_message_echo 1
set distributed_mmmc_disable_reports_auto_redirection 0
set gpsPrivate::dpgNewAddBufsDBUpdate 1
set gpsPrivate::lsgEnableNewDbApiInRestruct 1
set init_gnd_net VSS
set init_io_file {}
set init_lef_file {/home/users/xingyuni/ee372/aloe-sky130/aloe/stemcell/rtk-tech.tlef  /home/users/xingyuni/ee372/aloe-sky130/aloe/stemcell/stdcells.lef}
set init_pwr_net VDD
set init_top_cell bgr_top
set init_verilog /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.v
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set latch_time_borrow_mode max_borrow
set pegDefaultResScaleFactor 1.000000
set pegDetailResScaleFactor 1.000000
get_message -id GLOBAL-100 -suppress
get_message -id GLOBAL-100 -suppress
set report_inactive_arcs_format {from to when arc_type sense reason}
set timing_library_load_pin_cap_indices {}
set timing_library_write_library_to_directory {}
set tso_post_client_restore_command {update_timing ; write_eco_opt_db ;}
set init_design_uniquify 1
init_design
setRouteMode -earlyGlobalMaxRouteLayer 5
setPinAssignMode -maxLayer 5
setNanoRouteMode -routeTopRoutingLayer 5
setDesignMode -topRoutingLayer met4
setDesignMode -process 16 -flowEffort standard
setViaGenMode -reset
setViaGenMode -optimize_cross_via true
setViaGenMode -optimize_via_on_routing_track true
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false
setPlaceMode -checkDiffusionWidth true
setPlaceMode -coreEffort high
setStreamOutMode -textSize 0.1
setStreamOutMode -virtualConnection false
globalNetConnect VDD -type tiehi -pin VPWR -inst *
globalNetConnect VSS -type tielo -pin VGND -inst *
globalNetConnect VDD -type tiehi -pin VPB -inst *
globalNetConnect VSS -type tielo -pin VNB -inst *
globalNetConnect VDD -type pgpin -pin VPWR -inst *
globalNetConnect VSS -type pgpin -pin VGND -inst *
globalNetConnect VDD -type pgpin -pin VPB -inst *
globalNetConnect VSS -type pgpin -pin VNB -inst *
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
all_constraint_modes -active
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
deselectNet VDD
deselectNet VSS
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/output/lef/bgr_top_0.lef
win
zoomBox -402.81200 -193.86200 287.22200 139.35100
zoomBox -503.39500 -240.64200 308.41000 151.37300
zoomBox -297.05700 -145.29100 289.47200 137.94000
deselectAll
gui_select -rect {201.17700 83.47200 121.48300 -44.38300}
deselectAll
zoomIn
gui_select -rect {29.17500 -12.08400 4.71300 -28.13800}
zoomBox -174.79800 -74.17700 143.55800 79.55500
pan 136.30500 176.55300
zoomBox -80.39500 -15.26900 294.14200 165.59200
zoomBox -130.59600 -35.16900 310.03600 177.60900
pan 55.99400 157.88200
zoomBox -32.37100 74.52400 285.98600 228.25700
zoomBox -182.74000 19.96800 335.65300 270.29700
zoomBox -251.50800 -4.98200 358.36700 289.52300
pan 59.02000 236.39200
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false -displayByLayer
violationBrowserClose
setLayerPreference node_cell -isVisible 1
