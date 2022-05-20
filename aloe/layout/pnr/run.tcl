loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_00.def
createNetGroup group0
specifyNetWeight porst 3
createNetGroup group1
specifyNetWeight va 20
createNetGroup group2
specifyNetWeight vb 5
createNetGroup group3
specifyNetWeight vbg 6
createNetGroup group4
specifyNetWeight VSS 7
createNetGroup group5
specifyNetWeight vc 20
createNetGroup group6
specifyNetWeight l17 20
createNetGroup group7
specifyNetWeight l18 17
createNetGroup group8
specifyNetWeight l19 16
createNetGroup group9
specifyNetWeight l20 3
createNetGroup group10
specifyNetWeight amp/VDD 6
createNetGroup group11
specifyNetWeight amp/VSS 13
createNetGroup group12
specifyNetWeight amp/vg 6
createNetGroup group13
specifyNetWeight amp/vq 10
createNetGroup group14
specifyNetWeight amp/vx 7
createNetGroup group15
specifyNetWeight VNW 16
createNetGroup group16
specifyNetWeight VDDPST 5
createNetGroup group17
specifyNetWeight POC 10
createNetGroup group18
specifyNetWeight VDDCE 13
createNetGroup group19
specifyNetWeight VDDPE 18
createNetGroup group20
specifyNetWeight VPW 12
createNetGroup group21
specifyNetWeight VSSPST 19
createNetGroup group22
specifyNetWeight VSSE 11
createNetGroup group23
specifyNetWeight BGR_Core/vbneg 5
createNetGroup group24
specifyNetWeight BGR_Core/l6 13
createNetGroup group25
specifyNetWeight BGR_Core/l7 11
createNetGroup group26
specifyNetWeight BGR_Core/l8 4
createNetGroup group27
specifyNetWeight BGR_Core/l10 17
createNetGroup group28
specifyNetWeight BGR_Core/l11 7
createNetGroup group29
specifyNetWeight BGR_Core/l1 7
createNetGroup group30
specifyNetWeight BGR_Core/l2 14
createNetGroup group31
specifyNetWeight BGR_Core/l4 13
createNetGroup group32
specifyNetWeight BGR_Core/l5 11
createNetGroup group33
specifyNetWeight BGR_Core/l12 5
createNetGroup group34
specifyNetWeight BGR_Core/R6/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R7/l 19
createNetGroup group36
specifyNetWeight BGR_Core/R8/l 4
createNetGroup group37
specifyNetWeight BGR_Core/R10/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group39
specifyNetWeight BGR_Core/R3/l 7
createNetGroup group40
specifyNetWeight BGR_Core/R1/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R2/l 16
createNetGroup group42
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group43
specifyNetWeight BGR_Core/R5/l 10
createNetGroup group44
specifyNetWeight BGR_Core/R12/l 8
createNetGroup group45
specifyNetWeight CM/VDD 3
createNetGroup group46
specifyNetWeight R17/l 19
createNetGroup group47
specifyNetWeight R18/l 19
createNetGroup group48
specifyNetWeight R19/l 10
createNetGroup group49
specifyNetWeight R20/l 10
createNetGroup group50
specifyNetWeight VDD 8
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
deselectNet {VDD amp/VDD CM/VDD}
deselectNet {VSS amp/VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
cal_nl -n 1 -l 2 -d /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/expr_hof/ -b BGR_V1_
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/BGR_V1_3_1.lef
