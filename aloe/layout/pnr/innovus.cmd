#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri May  6 19:27:09 2022                
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
set init_lef_file {/home/users/xingyuni/ee372/stemcell_share/rtk-tech.tlef  /home/users/xingyuni/ee372/stemcell_share/stdcells.lef}
set init_pwr_net VDD
set init_top_cell ringosc
set init_verilog /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ringosc.v
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
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
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
defOut -floorplan -noStdCells /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top0_0.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top0_0.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 4
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 17
createNetGroup group3
specifyNetWeight out2 19
createNetGroup group4
specifyNetWeight out3 5
createNetGroup group5
specifyNetWeight out4 13
createNetGroup group6
specifyNetWeight out5 15
createNetGroup group7
specifyNetWeight inv1/ds 12
createNetGroup group8
specifyNetWeight inv2/ds 8
createNetGroup group9
specifyNetWeight inv3/ds 19
createNetGroup group10
specifyNetWeight inv4/ds 17
createNetGroup group11
specifyNetWeight inv5/ds 16
createNetGroup group12
specifyNetWeight VDD 17
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 10
createNetGroup group16
specifyNetWeight POC 3
createNetGroup group17
specifyNetWeight VDDCE 19
createNetGroup group18
specifyNetWeight VDDPE 2
createNetGroup group19
specifyNetWeight VPW 4
createNetGroup group20
specifyNetWeight VSSPST 14
createNetGroup group21
specifyNetWeight VSSE 2
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top0_1.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 9
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 4
createNetGroup group3
specifyNetWeight out2 8
createNetGroup group4
specifyNetWeight out3 20
createNetGroup group5
specifyNetWeight out4 9
createNetGroup group6
specifyNetWeight out5 9
createNetGroup group7
specifyNetWeight inv1/ds 6
createNetGroup group8
specifyNetWeight inv2/ds 19
createNetGroup group9
specifyNetWeight inv3/ds 16
createNetGroup group10
specifyNetWeight inv4/ds 4
createNetGroup group11
specifyNetWeight inv5/ds 4
createNetGroup group12
specifyNetWeight VDD 19
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 12
createNetGroup group15
specifyNetWeight VDDPST 18
createNetGroup group16
specifyNetWeight POC 17
createNetGroup group17
specifyNetWeight VDDCE 5
createNetGroup group18
specifyNetWeight VDDPE 11
createNetGroup group19
specifyNetWeight VPW 19
createNetGroup group20
specifyNetWeight VSSPST 11
createNetGroup group21
specifyNetWeight VSSE 5
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top0_2.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 19
createNetGroup group1
specifyNetWeight en 8
createNetGroup group2
specifyNetWeight out1 19
createNetGroup group3
specifyNetWeight out2 20
createNetGroup group4
specifyNetWeight out3 11
createNetGroup group5
specifyNetWeight out4 16
createNetGroup group6
specifyNetWeight out5 4
createNetGroup group7
specifyNetWeight inv1/ds 14
createNetGroup group8
specifyNetWeight inv2/ds 12
createNetGroup group9
specifyNetWeight inv3/ds 20
createNetGroup group10
specifyNetWeight inv4/ds 9
createNetGroup group11
specifyNetWeight inv5/ds 11
createNetGroup group12
specifyNetWeight VDD 6
createNetGroup group13
specifyNetWeight VSS 6
createNetGroup group14
specifyNetWeight VNW 7
createNetGroup group15
specifyNetWeight VDDPST 8
createNetGroup group16
specifyNetWeight POC 7
createNetGroup group17
specifyNetWeight VDDCE 3
createNetGroup group18
specifyNetWeight VDDPE 10
createNetGroup group19
specifyNetWeight VPW 17
createNetGroup group20
specifyNetWeight VSSPST 4
createNetGroup group21
specifyNetWeight VSSE 4
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top0_3.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top1_0.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 4
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 17
createNetGroup group3
specifyNetWeight out2 19
createNetGroup group4
specifyNetWeight out3 5
createNetGroup group5
specifyNetWeight out4 13
createNetGroup group6
specifyNetWeight out5 15
createNetGroup group7
specifyNetWeight inv1/ds 12
createNetGroup group8
specifyNetWeight inv2/ds 8
createNetGroup group9
specifyNetWeight inv3/ds 19
createNetGroup group10
specifyNetWeight inv4/ds 17
createNetGroup group11
specifyNetWeight inv5/ds 16
createNetGroup group12
specifyNetWeight VDD 17
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 10
createNetGroup group16
specifyNetWeight POC 3
createNetGroup group17
specifyNetWeight VDDCE 19
createNetGroup group18
specifyNetWeight VDDPE 2
createNetGroup group19
specifyNetWeight VPW 4
createNetGroup group20
specifyNetWeight VSSPST 14
createNetGroup group21
specifyNetWeight VSSE 2
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top1_1.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 9
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 4
createNetGroup group3
specifyNetWeight out2 8
createNetGroup group4
specifyNetWeight out3 20
createNetGroup group5
specifyNetWeight out4 9
createNetGroup group6
specifyNetWeight out5 9
createNetGroup group7
specifyNetWeight inv1/ds 6
createNetGroup group8
specifyNetWeight inv2/ds 19
createNetGroup group9
specifyNetWeight inv3/ds 16
createNetGroup group10
specifyNetWeight inv4/ds 4
createNetGroup group11
specifyNetWeight inv5/ds 4
createNetGroup group12
specifyNetWeight VDD 19
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 12
createNetGroup group15
specifyNetWeight VDDPST 18
createNetGroup group16
specifyNetWeight POC 17
createNetGroup group17
specifyNetWeight VDDCE 5
createNetGroup group18
specifyNetWeight VDDPE 11
createNetGroup group19
specifyNetWeight VPW 19
createNetGroup group20
specifyNetWeight VSSPST 11
createNetGroup group21
specifyNetWeight VSSE 5
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top1_2.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 19
createNetGroup group1
specifyNetWeight en 8
createNetGroup group2
specifyNetWeight out1 19
createNetGroup group3
specifyNetWeight out2 20
createNetGroup group4
specifyNetWeight out3 11
createNetGroup group5
specifyNetWeight out4 16
createNetGroup group6
specifyNetWeight out5 4
createNetGroup group7
specifyNetWeight inv1/ds 14
createNetGroup group8
specifyNetWeight inv2/ds 12
createNetGroup group9
specifyNetWeight inv3/ds 20
createNetGroup group10
specifyNetWeight inv4/ds 9
createNetGroup group11
specifyNetWeight inv5/ds 11
createNetGroup group12
specifyNetWeight VDD 6
createNetGroup group13
specifyNetWeight VSS 6
createNetGroup group14
specifyNetWeight VNW 7
createNetGroup group15
specifyNetWeight VDDPST 8
createNetGroup group16
specifyNetWeight POC 7
createNetGroup group17
specifyNetWeight VDDCE 3
createNetGroup group18
specifyNetWeight VDDPE 10
createNetGroup group19
specifyNetWeight VPW 17
createNetGroup group20
specifyNetWeight VSSPST 4
createNetGroup group21
specifyNetWeight VSSE 4
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top1_3.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top2_0.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top2_1.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 4
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 17
createNetGroup group3
specifyNetWeight out2 19
createNetGroup group4
specifyNetWeight out3 5
createNetGroup group5
specifyNetWeight out4 13
createNetGroup group6
specifyNetWeight out5 15
createNetGroup group7
specifyNetWeight inv1/ds 12
createNetGroup group8
specifyNetWeight inv2/ds 8
createNetGroup group9
specifyNetWeight inv3/ds 19
createNetGroup group10
specifyNetWeight inv4/ds 17
createNetGroup group11
specifyNetWeight inv5/ds 16
createNetGroup group12
specifyNetWeight VDD 17
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 10
createNetGroup group16
specifyNetWeight POC 3
createNetGroup group17
specifyNetWeight VDDCE 19
createNetGroup group18
specifyNetWeight VDDPE 2
createNetGroup group19
specifyNetWeight VPW 4
createNetGroup group20
specifyNetWeight VSSPST 14
createNetGroup group21
specifyNetWeight VSSE 2
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top2_2.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 9
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 4
createNetGroup group3
specifyNetWeight out2 8
createNetGroup group4
specifyNetWeight out3 20
createNetGroup group5
specifyNetWeight out4 9
createNetGroup group6
specifyNetWeight out5 9
createNetGroup group7
specifyNetWeight inv1/ds 6
createNetGroup group8
specifyNetWeight inv2/ds 19
createNetGroup group9
specifyNetWeight inv3/ds 16
createNetGroup group10
specifyNetWeight inv4/ds 4
createNetGroup group11
specifyNetWeight inv5/ds 4
createNetGroup group12
specifyNetWeight VDD 19
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 12
createNetGroup group15
specifyNetWeight VDDPST 18
createNetGroup group16
specifyNetWeight POC 17
createNetGroup group17
specifyNetWeight VDDCE 5
createNetGroup group18
specifyNetWeight VDDPE 11
createNetGroup group19
specifyNetWeight VPW 19
createNetGroup group20
specifyNetWeight VSSPST 11
createNetGroup group21
specifyNetWeight VSSE 5
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top2_3.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top3_0.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top3_1.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top3_2.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 4
createNetGroup group1
specifyNetWeight en 12
createNetGroup group2
specifyNetWeight out1 17
createNetGroup group3
specifyNetWeight out2 19
createNetGroup group4
specifyNetWeight out3 5
createNetGroup group5
specifyNetWeight out4 13
createNetGroup group6
specifyNetWeight out5 15
createNetGroup group7
specifyNetWeight inv1/ds 12
createNetGroup group8
specifyNetWeight inv2/ds 8
createNetGroup group9
specifyNetWeight inv3/ds 19
createNetGroup group10
specifyNetWeight inv4/ds 17
createNetGroup group11
specifyNetWeight inv5/ds 16
createNetGroup group12
specifyNetWeight VDD 17
createNetGroup group13
specifyNetWeight VSS 12
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 10
createNetGroup group16
specifyNetWeight POC 3
createNetGroup group17
specifyNetWeight VDDCE 19
createNetGroup group18
specifyNetWeight VDDPE 2
createNetGroup group19
specifyNetWeight VPW 4
createNetGroup group20
specifyNetWeight VSSPST 14
createNetGroup group21
specifyNetWeight VSSE 2
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top3_3.lef
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/ringosc/ro.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight en 15
createNetGroup group2
specifyNetWeight out1 3
createNetGroup group3
specifyNetWeight out2 10
createNetGroup group4
specifyNetWeight out3 18
createNetGroup group5
specifyNetWeight out4 17
createNetGroup group6
specifyNetWeight out5 14
createNetGroup group7
specifyNetWeight inv1/ds 11
createNetGroup group8
specifyNetWeight inv2/ds 17
createNetGroup group9
specifyNetWeight inv3/ds 13
createNetGroup group10
specifyNetWeight inv4/ds 20
createNetGroup group11
specifyNetWeight inv5/ds 8
createNetGroup group12
specifyNetWeight VDD 11
createNetGroup group13
specifyNetWeight VSS 5
createNetGroup group14
specifyNetWeight VNW 18
createNetGroup group15
specifyNetWeight VDDPST 6
createNetGroup group16
specifyNetWeight POC 11
createNetGroup group17
specifyNetWeight VDDCE 6
createNetGroup group18
specifyNetWeight VDDPE 5
createNetGroup group19
specifyNetWeight VPW 10
createNetGroup group20
specifyNetWeight VSSPST 19
createNetGroup group21
specifyNetWeight VSSE 6
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
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top3_0.lef
