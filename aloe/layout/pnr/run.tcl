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
set_interactive_constraint_modes [all_constraint_modes -active]
setPlaceMode -checkCellDRCFromPreRoute false
place_design
selectNet *
deselectNet {VDD}
deselectNet {VSS}
setNanoRouteMode -quiet -routeSelectedNetOnly 1
routeDesign -globalDetail
cal_nl -n 3 -l 1 -d /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/engine/expr_new/ -b ro_top
write_lef_abstract -5.8 -extractBlockObs /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lef/ro_top3.lef
