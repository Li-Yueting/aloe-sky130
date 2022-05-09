loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_00.def
createNetGroup group0
specifyNetWeight clk 6
createNetGroup group1
specifyNetWeight porst 13
createNetGroup group2
specifyNetWeight va 4
createNetGroup group3
specifyNetWeight vb 17
createNetGroup group4
specifyNetWeight vbg 9
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight ground 9
createNetGroup group7
specifyNetWeight power 3
createNetGroup group8
specifyNetWeight l17 2
createNetGroup group9
specifyNetWeight l18 9
createNetGroup group10
specifyNetWeight l19 12
createNetGroup group11
specifyNetWeight l20 4
createNetGroup group12
specifyNetWeight amp/power 3
createNetGroup group13
specifyNetWeight amp/ground 13
createNetGroup group14
specifyNetWeight amp/vg 15
createNetGroup group15
specifyNetWeight amp/vq 6
createNetGroup group16
specifyNetWeight amp/vx 8
createNetGroup group17
specifyNetWeight VNW 15
createNetGroup group18
specifyNetWeight VDDPST 6
createNetGroup group19
specifyNetWeight POC 13
createNetGroup group20
specifyNetWeight VDDCE 8
createNetGroup group21
specifyNetWeight VDDPE 7
createNetGroup group22
specifyNetWeight VPW 12
createNetGroup group23
specifyNetWeight VSSPST 14
createNetGroup group24
specifyNetWeight VSSE 13
createNetGroup group25
specifyNetWeight BGR_Core/ground 12
createNetGroup group26
specifyNetWeight BGR_Core/vbneg 10
createNetGroup group27
specifyNetWeight BGR_Core/l6 19
createNetGroup group28
specifyNetWeight BGR_Core/l7 19
createNetGroup group29
specifyNetWeight BGR_Core/l8 16
createNetGroup group30
specifyNetWeight BGR_Core/l10 3
createNetGroup group31
specifyNetWeight BGR_Core/l11 19
createNetGroup group32
specifyNetWeight BGR_Core/l1 7
createNetGroup group33
specifyNetWeight BGR_Core/l2 16
createNetGroup group34
specifyNetWeight BGR_Core/l4 14
createNetGroup group35
specifyNetWeight BGR_Core/l5 7
createNetGroup group36
specifyNetWeight BGR_Core/l12 3
createNetGroup group37
specifyNetWeight BGR_Core/R6/l 15
createNetGroup group38
specifyNetWeight BGR_Core/R7/l 15
createNetGroup group39
specifyNetWeight BGR_Core/R8/l 16
createNetGroup group40
specifyNetWeight BGR_Core/R10/l 11
createNetGroup group41
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group42
specifyNetWeight BGR_Core/R3/l 12
createNetGroup group43
specifyNetWeight BGR_Core/R1/l 17
createNetGroup group44
specifyNetWeight BGR_Core/R2/l 11
createNetGroup group45
specifyNetWeight BGR_Core/R4/l 17
createNetGroup group46
specifyNetWeight BGR_Core/R5/l 3
createNetGroup group47
specifyNetWeight BGR_Core/R12/l 7
createNetGroup group48
specifyNetWeight CM/power 16
createNetGroup group49
specifyNetWeight CM/ground 7
createNetGroup group50
specifyNetWeight R17/l 4
createNetGroup group51
specifyNetWeight R18/l 13
createNetGroup group52
specifyNetWeight R19/l 3
createNetGroup group53
specifyNetWeight R20/l 19
setDesignMode -process 130 -powerEffort high
setAnalysisMode -analysisType onChipVariation
setPlaceMode -place_global_cong_effort low -place_global_clock_gate_aware true -place_global_place_io_pins false
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
deselectNet {VDD}
deselectNet {VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
cal_nl -n 1 -l 2 -d /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/expr_hof/ -b BGR_V1_
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/BGR_V1_3_1.lef
