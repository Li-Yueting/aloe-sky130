loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/bgr_top/bgr_top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_00.def
createNetGroup group0
specifyNetWeight porst 19
createNetGroup group1
specifyNetWeight va 2
createNetGroup group2
specifyNetWeight vb 4
createNetGroup group3
specifyNetWeight vbg 2
createNetGroup group4
specifyNetWeight VSS 12
createNetGroup group5
specifyNetWeight vc 9
createNetGroup group6
specifyNetWeight l17 14
createNetGroup group7
specifyNetWeight l18 16
createNetGroup group8
specifyNetWeight l19 17
createNetGroup group9
specifyNetWeight l20 15
createNetGroup group10
specifyNetWeight amp/vg 13
createNetGroup group11
specifyNetWeight amp/vq 6
createNetGroup group12
specifyNetWeight amp/vx 10
createNetGroup group13
specifyNetWeight VNW 4
createNetGroup group14
specifyNetWeight VDDPST 7
createNetGroup group15
specifyNetWeight POC 20
createNetGroup group16
specifyNetWeight VDDCE 9
createNetGroup group17
specifyNetWeight VDDPE 8
createNetGroup group18
specifyNetWeight VPW 3
createNetGroup group19
specifyNetWeight VSSPST 3
createNetGroup group20
specifyNetWeight VSSE 18
createNetGroup group21
specifyNetWeight BGR_Core/vbneg 4
createNetGroup group22
specifyNetWeight BGR_Core/l6 16
createNetGroup group23
specifyNetWeight BGR_Core/l7 9
createNetGroup group24
specifyNetWeight BGR_Core/l8 16
createNetGroup group25
specifyNetWeight BGR_Core/l10 6
createNetGroup group26
specifyNetWeight BGR_Core/l11 18
createNetGroup group27
specifyNetWeight BGR_Core/l1 11
createNetGroup group28
specifyNetWeight BGR_Core/l2 2
createNetGroup group29
specifyNetWeight BGR_Core/l4 6
createNetGroup group30
specifyNetWeight BGR_Core/l5 13
createNetGroup group31
specifyNetWeight BGR_Core/l12 13
createNetGroup group32
specifyNetWeight BGR_Core/R6/l 13
createNetGroup group33
specifyNetWeight BGR_Core/R7/l 11
createNetGroup group34
specifyNetWeight BGR_Core/R8/l 18
createNetGroup group35
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group36
specifyNetWeight BGR_Core/R11/l 6
createNetGroup group37
specifyNetWeight BGR_Core/R3/l 2
createNetGroup group38
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group39
specifyNetWeight BGR_Core/R2/l 8
createNetGroup group40
specifyNetWeight BGR_Core/R4/l 14
createNetGroup group41
specifyNetWeight BGR_Core/R5/l 12
createNetGroup group42
specifyNetWeight BGR_Core/R12/l 17
createNetGroup group43
specifyNetWeight R17/l 11
createNetGroup group44
specifyNetWeight R18/l 16
createNetGroup group45
specifyNetWeight R19/l 6
createNetGroup group46
specifyNetWeight R20/l 17
createNetGroup group47
specifyNetWeight VDD 11
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
cal_nl -n 1 -l 2 -d /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/expr_hof/ -b BGR_V1_
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/BGR_V1_6_1.lef
