#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon May  9 01:58:00 2022                
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
set init_top_cell BGR_Top
set init_verilog /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.v
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
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
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
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 14
createNetGroup group1
specifyNetWeight porst 15
createNetGroup group2
specifyNetWeight va 3
createNetGroup group3
specifyNetWeight vb 10
createNetGroup group4
specifyNetWeight vbg 18
createNetGroup group5
specifyNetWeight vc 17
createNetGroup group6
specifyNetWeight ground 14
createNetGroup group7
specifyNetWeight power 11
createNetGroup group8
specifyNetWeight l17 17
createNetGroup group9
specifyNetWeight l18 13
createNetGroup group10
specifyNetWeight l19 20
createNetGroup group11
specifyNetWeight l20 8
createNetGroup group12
specifyNetWeight amp/power 18
createNetGroup group13
specifyNetWeight amp/ground 6
createNetGroup group14
specifyNetWeight amp/vg 11
createNetGroup group15
specifyNetWeight amp/vq 6
createNetGroup group16
specifyNetWeight amp/vx 5
createNetGroup group17
specifyNetWeight VNW 19
createNetGroup group18
specifyNetWeight VDDPST 6
createNetGroup group19
specifyNetWeight POC 11
createNetGroup group20
specifyNetWeight VDDCE 5
createNetGroup group21
specifyNetWeight VDDPE 4
createNetGroup group22
specifyNetWeight VPW 12
createNetGroup group23
specifyNetWeight VSSPST 17
createNetGroup group24
specifyNetWeight VSSE 19
createNetGroup group25
specifyNetWeight BGR_Core/ground 13
createNetGroup group26
specifyNetWeight BGR_Core/vbneg 15
createNetGroup group27
specifyNetWeight BGR_Core/l6 12
createNetGroup group28
specifyNetWeight BGR_Core/l7 8
createNetGroup group29
specifyNetWeight BGR_Core/l8 19
createNetGroup group30
specifyNetWeight BGR_Core/l10 17
createNetGroup group31
specifyNetWeight BGR_Core/l11 16
createNetGroup group32
specifyNetWeight BGR_Core/l1 18
createNetGroup group33
specifyNetWeight BGR_Core/l2 10
createNetGroup group34
specifyNetWeight BGR_Core/l4 3
createNetGroup group35
specifyNetWeight BGR_Core/l5 19
createNetGroup group36
specifyNetWeight BGR_Core/l12 2
createNetGroup group37
specifyNetWeight BGR_Core/R6/l 4
createNetGroup group38
specifyNetWeight BGR_Core/R7/l 14
createNetGroup group39
specifyNetWeight BGR_Core/R8/l 2
createNetGroup group40
specifyNetWeight BGR_Core/R10/l 17
createNetGroup group41
specifyNetWeight BGR_Core/R11/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R3/l 9
createNetGroup group43
specifyNetWeight BGR_Core/R1/l 12
createNetGroup group44
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group45
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group46
specifyNetWeight BGR_Core/R5/l 20
createNetGroup group47
specifyNetWeight BGR_Core/R12/l 9
createNetGroup group48
specifyNetWeight CM/power 9
createNetGroup group49
specifyNetWeight CM/ground 6
createNetGroup group50
specifyNetWeight R17/l 19
createNetGroup group51
specifyNetWeight R18/l 16
createNetGroup group52
specifyNetWeight R19/l 4
createNetGroup group53
specifyNetWeight R20/l 4
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
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 17
createNetGroup group1
specifyNetWeight porst 5
createNetGroup group2
specifyNetWeight va 11
createNetGroup group3
specifyNetWeight vb 19
createNetGroup group4
specifyNetWeight vbg 11
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight ground 19
createNetGroup group7
specifyNetWeight power 12
createNetGroup group8
specifyNetWeight l17 19
createNetGroup group9
specifyNetWeight l18 8
createNetGroup group10
specifyNetWeight l19 19
createNetGroup group11
specifyNetWeight l20 20
createNetGroup group12
specifyNetWeight amp/power 11
createNetGroup group13
specifyNetWeight amp/ground 16
createNetGroup group14
specifyNetWeight amp/vg 4
createNetGroup group15
specifyNetWeight amp/vq 14
createNetGroup group16
specifyNetWeight amp/vx 12
createNetGroup group17
specifyNetWeight VNW 9
createNetGroup group18
specifyNetWeight VDDPST 11
createNetGroup group19
specifyNetWeight POC 7
createNetGroup group20
specifyNetWeight VDDCE 8
createNetGroup group21
specifyNetWeight VDDPE 7
createNetGroup group22
specifyNetWeight VPW 3
createNetGroup group23
specifyNetWeight VSSPST 10
createNetGroup group24
specifyNetWeight VSSE 17
createNetGroup group25
specifyNetWeight BGR_Core/ground 4
createNetGroup group26
specifyNetWeight BGR_Core/vbneg 6
createNetGroup group27
specifyNetWeight BGR_Core/l6 6
createNetGroup group28
specifyNetWeight BGR_Core/l7 3
createNetGroup group29
specifyNetWeight BGR_Core/l8 4
createNetGroup group30
specifyNetWeight BGR_Core/l10 19
createNetGroup group31
specifyNetWeight BGR_Core/l11 14
createNetGroup group32
specifyNetWeight BGR_Core/l1 18
createNetGroup group33
specifyNetWeight BGR_Core/l2 10
createNetGroup group34
specifyNetWeight BGR_Core/l4 18
createNetGroup group35
specifyNetWeight BGR_Core/l5 9
createNetGroup group36
specifyNetWeight BGR_Core/l12 8
createNetGroup group37
specifyNetWeight BGR_Core/R6/l 20
createNetGroup group38
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R8/l 20
createNetGroup group40
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R3/l 17
createNetGroup group43
specifyNetWeight BGR_Core/R1/l 13
createNetGroup group44
specifyNetWeight BGR_Core/R2/l 4
createNetGroup group45
specifyNetWeight BGR_Core/R4/l 12
createNetGroup group46
specifyNetWeight BGR_Core/R5/l 5
createNetGroup group47
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group48
specifyNetWeight CM/power 20
createNetGroup group49
specifyNetWeight CM/ground 12
createNetGroup group50
specifyNetWeight R17/l 8
createNetGroup group51
specifyNetWeight R18/l 9
createNetGroup group52
specifyNetWeight R19/l 2
createNetGroup group53
specifyNetWeight R20/l 10
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
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 13
createNetGroup group1
specifyNetWeight porst 7
createNetGroup group2
specifyNetWeight va 12
createNetGroup group3
specifyNetWeight vb 15
createNetGroup group4
specifyNetWeight vbg 3
createNetGroup group5
specifyNetWeight vc 5
createNetGroup group6
specifyNetWeight ground 6
createNetGroup group7
specifyNetWeight power 9
createNetGroup group8
specifyNetWeight l17 3
createNetGroup group9
specifyNetWeight l18 20
createNetGroup group10
specifyNetWeight l19 19
createNetGroup group11
specifyNetWeight l20 4
createNetGroup group12
specifyNetWeight amp/power 2
createNetGroup group13
specifyNetWeight amp/ground 5
createNetGroup group14
specifyNetWeight amp/vg 8
createNetGroup group15
specifyNetWeight amp/vq 20
createNetGroup group16
specifyNetWeight amp/vx 5
createNetGroup group17
specifyNetWeight VNW 4
createNetGroup group18
specifyNetWeight VDDPST 13
createNetGroup group19
specifyNetWeight POC 5
createNetGroup group20
specifyNetWeight VDDCE 3
createNetGroup group21
specifyNetWeight VDDPE 2
createNetGroup group22
specifyNetWeight VPW 8
createNetGroup group23
specifyNetWeight VSSPST 7
createNetGroup group24
specifyNetWeight VSSE 5
createNetGroup group25
specifyNetWeight BGR_Core/ground 8
createNetGroup group26
specifyNetWeight BGR_Core/vbneg 3
createNetGroup group27
specifyNetWeight BGR_Core/l6 2
createNetGroup group28
specifyNetWeight BGR_Core/l7 19
createNetGroup group29
specifyNetWeight BGR_Core/l8 15
createNetGroup group30
specifyNetWeight BGR_Core/l10 5
createNetGroup group31
specifyNetWeight BGR_Core/l11 10
createNetGroup group32
specifyNetWeight BGR_Core/l1 4
createNetGroup group33
specifyNetWeight BGR_Core/l2 9
createNetGroup group34
specifyNetWeight BGR_Core/l4 4
createNetGroup group35
specifyNetWeight BGR_Core/l5 11
createNetGroup group36
specifyNetWeight BGR_Core/l12 13
createNetGroup group37
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R7/l 7
createNetGroup group39
specifyNetWeight BGR_Core/R8/l 3
createNetGroup group40
specifyNetWeight BGR_Core/R10/l 18
createNetGroup group41
specifyNetWeight BGR_Core/R11/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R3/l 3
createNetGroup group43
specifyNetWeight BGR_Core/R1/l 5
createNetGroup group44
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group45
specifyNetWeight BGR_Core/R4/l 8
createNetGroup group46
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group47
specifyNetWeight BGR_Core/R12/l 13
createNetGroup group48
specifyNetWeight CM/power 17
createNetGroup group49
specifyNetWeight CM/ground 20
createNetGroup group50
specifyNetWeight R17/l 7
createNetGroup group51
specifyNetWeight R18/l 8
createNetGroup group52
specifyNetWeight R19/l 3
createNetGroup group53
specifyNetWeight R20/l 7
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
loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/ro_top0.def
createNetGroup group0
specifyNetWeight clk 18
createNetGroup group1
specifyNetWeight porst 10
createNetGroup group2
specifyNetWeight va 5
createNetGroup group3
specifyNetWeight vb 16
createNetGroup group4
specifyNetWeight vbg 7
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight ground 17
createNetGroup group7
specifyNetWeight power 15
createNetGroup group8
specifyNetWeight l17 20
createNetGroup group9
specifyNetWeight l18 18
createNetGroup group10
specifyNetWeight l19 11
createNetGroup group11
specifyNetWeight l20 13
createNetGroup group12
specifyNetWeight amp/power 14
createNetGroup group13
specifyNetWeight amp/ground 10
createNetGroup group14
specifyNetWeight amp/vg 6
createNetGroup group15
specifyNetWeight amp/vq 19
createNetGroup group16
specifyNetWeight amp/vx 2
createNetGroup group17
specifyNetWeight VNW 4
createNetGroup group18
specifyNetWeight VDDPST 12
createNetGroup group19
specifyNetWeight POC 3
createNetGroup group20
specifyNetWeight VDDCE 19
createNetGroup group21
specifyNetWeight VDDPE 10
createNetGroup group22
specifyNetWeight VPW 6
createNetGroup group23
specifyNetWeight VSSPST 9
createNetGroup group24
specifyNetWeight VSSE 17
createNetGroup group25
specifyNetWeight BGR_Core/ground 11
createNetGroup group26
specifyNetWeight BGR_Core/vbneg 13
createNetGroup group27
specifyNetWeight BGR_Core/l6 20
createNetGroup group28
specifyNetWeight BGR_Core/l7 6
createNetGroup group29
specifyNetWeight BGR_Core/l8 11
createNetGroup group30
specifyNetWeight BGR_Core/l10 14
createNetGroup group31
specifyNetWeight BGR_Core/l11 15
createNetGroup group32
specifyNetWeight BGR_Core/l1 4
createNetGroup group33
specifyNetWeight BGR_Core/l2 2
createNetGroup group34
specifyNetWeight BGR_Core/l4 8
createNetGroup group35
specifyNetWeight BGR_Core/l5 12
createNetGroup group36
specifyNetWeight BGR_Core/l12 7
createNetGroup group37
specifyNetWeight BGR_Core/R6/l 9
createNetGroup group38
specifyNetWeight BGR_Core/R7/l 9
createNetGroup group39
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R10/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R11/l 20
createNetGroup group42
specifyNetWeight BGR_Core/R3/l 15
createNetGroup group43
specifyNetWeight BGR_Core/R1/l 3
createNetGroup group44
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group45
specifyNetWeight BGR_Core/R4/l 20
createNetGroup group46
specifyNetWeight BGR_Core/R5/l 15
createNetGroup group47
specifyNetWeight BGR_Core/R12/l 3
createNetGroup group48
specifyNetWeight CM/power 7
createNetGroup group49
specifyNetWeight CM/ground 16
createNetGroup group50
specifyNetWeight R17/l 4
createNetGroup group51
specifyNetWeight R18/l 10
createNetGroup group52
specifyNetWeight R19/l 7
createNetGroup group53
specifyNetWeight R20/l 16
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
win
zoomBox -245.27500 -165.91400 164.57500 232.61400
zoomBox -311.87400 -209.47000 170.30300 259.38700
pan 248.63700 169.00300
deselectAll
zoomBox 33.73200 -43.63600 591.61100 225.76000
setLayerPreference node_cell -isVisible 1
setLayerPreference node_route -isVisible 0
zoomBox 100.22700 17.59900 442.83700 183.04300
pan -80.37700 -71.91100
zoomBox 96.31900 57.39000 275.16500 143.75400
zoomBox 108.85200 62.13600 260.87300 135.54600
zoomBox 119.50700 66.17000 248.72500 128.56900
zoomBox 128.56200 69.59900 238.40000 122.63900
zoomBox 136.26000 72.51400 229.62300 117.59800
zoomBox 142.80400 74.99200 222.16200 113.31300
zoomBox 153.09400 78.88800 210.43000 106.57500
zoomBox 157.11200 80.41000 205.84800 103.94400
zoomBox 153.09300 78.88700 210.43000 106.57500
zoomBox 148.36400 77.09600 215.82100 109.67100
zoomBox 157.10900 80.40700 205.84800 103.94300
zoomBox 160.76700 81.74300 202.19600 101.74900
zoomBox 163.87700 82.87900 199.09200 99.88400
zoomBox 166.52100 83.84500 196.45400 98.29900
zoomBox 168.76800 84.66600 194.21100 96.95200
zoomBox 157.10600 80.40600 205.85000 103.94400
zoomBox 152.80100 78.83300 210.14700 106.52500
zoomBox 147.73600 76.98300 215.20200 109.56200
zoomBox 126.52000 69.23400 236.37700 122.28300
zoomBox 132.38300 72.19800 225.76200 117.29000
zoomBox 137.36700 74.71700 216.73900 113.04500
zoomBox 143.98900 76.66000 211.45500 109.23900
zoomBox 149.72700 78.30200 207.07300 105.99400
zoomBox 154.60400 79.69800 203.34800 103.23600
zoomBox 158.75600 80.88400 200.19000 100.89200
zoomBox 165.28600 82.74900 195.22200 97.20500
zoomBox 167.83600 83.47700 193.28200 95.76500
zoomBox 165.28400 82.74800 195.22200 97.20500
zoomBox 154.59900 79.69500 203.35100 103.23700
zoomBox 129.24600 72.45100 222.63900 117.55000
zoomBox 119.88600 69.77700 229.76000 122.83400
zoomBox 107.94500 66.70600 237.20900 129.12700
zoomBox 137.25800 72.66700 230.65200 117.76600
zoomBox 148.70600 74.99500 228.09100 113.32900
zoomBox 158.43700 76.97400 225.91400 109.55800
zoomBox 123.78900 69.92800 233.66500 122.98600
zoomBox 89.30200 62.91500 241.37900 136.35200
zoomBox 67.37000 58.45500 246.28500 144.85200
pan 67.15900 -11.01400
zoomBox 144.70800 61.62900 296.78500 135.06600
zoomBox 172.27600 75.91100 251.66400 114.24700
zoomBox 180.63100 80.23900 237.98900 107.93700
zoomBox 176.79100 78.25000 244.27200 110.83600
zoomBox 167.03500 70.17900 260.43700 115.28200
zoomBox 160.83100 65.03900 270.71700 118.10200
pan 18.90500 -85.26600
pan -38.34700 -96.11500
pan -31.47300 -40.90400
zoomBox 141.48200 115.18400 190.24000 138.72900
zoomBox 145.25700 116.94300 186.70100 136.95600
zoomBox 148.46500 118.43800 183.69300 135.44900
zoomBox 145.25600 116.94200 186.70100 136.95600
zoomBox 141.48000 115.18300 190.24000 138.72900
zoomBox 145.25500 116.94200 186.70100 136.95600
zoomBox 148.46400 118.43700 183.69300 135.44900
zoomBox 145.25500 116.94200 186.70100 136.95600
zoomBox 148.46400 118.43700 183.69300 135.44900
zoomBox 152.08500 120.30700 182.03000 134.76700
zoomBox 155.16300 121.89600 180.61600 134.18700
zoomBox 160.00300 124.39500 178.39300 133.27500
zoomBox 161.89300 125.37000 177.52500 132.91900
zoomBox 163.49900 126.19900 176.78700 132.61600
zoomBox 164.86400 126.90400 176.16000 132.35900
zoomBox 163.49800 126.19900 176.78700 132.61600
zoomBox 161.89000 125.36900 177.52500 132.91900
zoomBox 159.99900 124.39300 178.39300 133.27500
zoomBox 157.77500 123.24400 179.41500 133.69400
zoomBox 155.15800 121.89300 180.61700 134.18700
zoomBox 152.07800 120.30300 182.03100 134.76700
zoomBox 155.15700 121.89300 180.61700 134.18700
zoomBox 157.77400 123.24400 179.41500 133.69400
zoomBox 159.99800 124.39200 178.39300 133.27500
zoomBox 161.88800 125.36800 177.52500 132.91900
zoomBox 163.49500 126.19700 176.78700 132.61600
zoomBox 161.88600 125.36700 177.52500 132.91900
zoomBox 157.76900 123.24100 179.41600 133.69400
zoomBox 152.07100 120.29900 182.03300 134.76700
zoomBox 148.44800 118.42700 183.69700 135.44900
zoomBox 144.18400 116.22600 185.65500 136.25200
zoomBox 139.16900 113.63600 187.95800 137.19600
zoomBox 133.26800 110.58900 190.66800 138.30700
zoomBox 139.16800 113.63600 187.95800 137.19600
zoomBox 144.18300 116.22600 185.65400 136.25200
zoomBox 126.32600 107.00500 193.85500 139.61400
zoomBox 118.16000 102.78800 197.60600 141.15200
zoomBox 108.55300 97.82700 202.01900 142.96100
zoomBox 83.95300 85.12300 213.31900 147.59300
zoomBox 68.66700 75.75000 220.86200 149.24400
zoomBox 50.76200 64.67000 229.81500 151.13400
