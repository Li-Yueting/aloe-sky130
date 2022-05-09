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
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
deselectNet {VDD}
deselectNet {VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
cal_nl -n 3 -l 1 -d /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/expr_old/ -b ro_top
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top0_3.lef
