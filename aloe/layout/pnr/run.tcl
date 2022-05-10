loadFPlan /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/examples/BGR_Top/BGR_Top.fp
defIn /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/def_hof/BGR_V1_00.def
createNetGroup group0
specifyNetWeight clk 15
createNetGroup group1
specifyNetWeight porst 15
createNetGroup group2
specifyNetWeight va 5
createNetGroup group3
specifyNetWeight vb 6
createNetGroup group4
specifyNetWeight vbg 6
createNetGroup group5
specifyNetWeight vc 2
createNetGroup group6
specifyNetWeight ground 20
createNetGroup group7
specifyNetWeight power 18
createNetGroup group8
specifyNetWeight l17 5
createNetGroup group9
specifyNetWeight l18 8
createNetGroup group10
specifyNetWeight l19 18
createNetGroup group11
specifyNetWeight l20 5
createNetGroup group12
specifyNetWeight amp/power 10
createNetGroup group13
specifyNetWeight amp/ground 7
createNetGroup group14
specifyNetWeight amp/vg 14
createNetGroup group15
specifyNetWeight amp/vq 4
createNetGroup group16
specifyNetWeight amp/vx 3
createNetGroup group17
specifyNetWeight VNW 5
createNetGroup group18
specifyNetWeight VDDPST 13
createNetGroup group19
specifyNetWeight POC 17
createNetGroup group20
specifyNetWeight VDDCE 12
createNetGroup group21
specifyNetWeight VDDPE 5
createNetGroup group22
specifyNetWeight VPW 16
createNetGroup group23
specifyNetWeight VSSPST 13
createNetGroup group24
specifyNetWeight VSSE 20
createNetGroup group25
specifyNetWeight BGR_Core/ground 17
createNetGroup group26
specifyNetWeight BGR_Core/vbneg 9
createNetGroup group27
specifyNetWeight BGR_Core/l6 7
createNetGroup group28
specifyNetWeight BGR_Core/l7 19
createNetGroup group29
specifyNetWeight BGR_Core/l8 19
createNetGroup group30
specifyNetWeight BGR_Core/l10 4
createNetGroup group31
specifyNetWeight BGR_Core/l11 18
createNetGroup group32
specifyNetWeight BGR_Core/l1 7
createNetGroup group33
specifyNetWeight BGR_Core/l2 2
createNetGroup group34
specifyNetWeight BGR_Core/l4 7
createNetGroup group35
specifyNetWeight BGR_Core/l5 18
createNetGroup group36
specifyNetWeight BGR_Core/l12 15
createNetGroup group37
specifyNetWeight BGR_Core/R6/l 8
createNetGroup group38
specifyNetWeight BGR_Core/R7/l 16
createNetGroup group39
specifyNetWeight BGR_Core/R8/l 14
createNetGroup group40
specifyNetWeight BGR_Core/R10/l 10
createNetGroup group41
specifyNetWeight BGR_Core/R11/l 2
createNetGroup group42
specifyNetWeight BGR_Core/R3/l 20
createNetGroup group43
specifyNetWeight BGR_Core/R1/l 6
createNetGroup group44
specifyNetWeight BGR_Core/R2/l 14
createNetGroup group45
specifyNetWeight BGR_Core/R4/l 7
createNetGroup group46
specifyNetWeight BGR_Core/R5/l 16
createNetGroup group47
specifyNetWeight BGR_Core/R12/l 20
createNetGroup group48
specifyNetWeight CM/power 3
createNetGroup group49
specifyNetWeight CM/ground 14
createNetGroup group50
specifyNetWeight R17/l 4
createNetGroup group51
specifyNetWeight R18/l 20
createNetGroup group52
specifyNetWeight R19/l 14
createNetGroup group53
specifyNetWeight R20/l 12
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
