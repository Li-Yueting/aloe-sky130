#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue May 17 01:01:53 2022                
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
is_common_ui_mode
restoreDesign /home/users/xingyuni/ee372/aloe-sky130/stemcell_mflowgen/flow/ringosc/build/7-cadence-innovus-place/checkpoints/design.checkpoint/save.enc.dat ringosc
setDistributeHost -local
setMultiCpuUsage -localCpu 16
setDistributeHost -local
setMultiCpuUsage -localCpu 16
um::push_snapshot_stack
setAnalysisMode -cppr both
setDelayCalMode -siAware true -engine aae
setNanoRouteMode -drouteUseMultiCutViaEffort high -routeWithLithoDriven true -routeAntennaCellName sky130_fd_sc_hd__diode_2 -routeInsertAntennaDiode true
setFillerMode -core {sky130_fd_sc_hd__fill_8  sky130_fd_sc_hd__fill_4  sky130_fd_sc_hd__fill_2  sky130_fd_sc_hd__fill_1} -corePrefix FILL
routeDesign -placementCheck
setNanoRouteMode -droutePostRouteSpreadWire true -routeWithTimingDriven false
routeDesign -wireOpt
setNanoRouteMode -droutePostRouteSpreadWire false
setExtractRCMode -engine postRoute -effortLevel low
um::pop_snapshot_stack
reportMultiBitFFs -statistics
reportCongestion -hotspot
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.Routing.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.eGRPC.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.Routing.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.Implementation.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.eGRPC.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.Construction.area.total
get_metric -raw -id current -uuid 58812a08-173c-48d2-bb0e-a305e3f1c449 clock.Implementation.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.Routing.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.eGRPC.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.Routing.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.Implementation.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.eGRPC.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.Construction.area.total
get_metric -raw -id current -uuid 686bed6c-df90-48af-8c27-1db14c6541d3 clock.Implementation.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.Routing.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.PostConditioning.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.eGRPC.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.Routing.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.Implementation.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.eGRPC.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.Construction.area.total
get_metric -raw -id current -uuid 8b95d04e-0c25-4ae7-8b37-aa808ef64b0a clock.Implementation.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.Routing.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.PostConditioning.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.eGRPC.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.Routing.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.Implementation.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.eGRPC.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.Construction.area.total
get_metric -raw -id current -uuid b3ad6694-7085-4aee-ae40-82ebce97e0b0 clock.Implementation.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.Routing.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.PostConditioning.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.eGRPC.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.Routing.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.Implementation.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.eGRPC.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.Construction.area.total
get_metric -raw -id current -uuid 8120107b-1310-4786-807f-7b6af6161b0e clock.Implementation.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.Routing.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.eGRPC.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.Routing.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.Implementation.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.eGRPC.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.Construction.area.total
get_metric -raw -id current -uuid 2fabd896-9cbb-43b6-a394-98ad87caedd6 clock.Implementation.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.Routing.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.eGRPC.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.Routing.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.Implementation.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.eGRPC.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.Construction.area.total
get_metric -raw -id current -uuid 624cfce0-4549-4654-8b94-1f098847fd14 clock.Implementation.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.Routing.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.eGRPC.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.Routing.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.Implementation.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.eGRPC.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.Construction.area.total
get_metric -raw -id current -uuid 82b7c9a1-2655-416e-bceb-ef57eeda5549 clock.Implementation.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.Routing.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.PostConditioning.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.eGRPC.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.Routing.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.Implementation.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.eGRPC.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.Construction.area.total
get_metric -raw -id current -uuid bfadf309-d577-4b23-8d19-9826a6c063f3 clock.Implementation.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.Routing.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.PostConditioning.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.eGRPC.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.Routing.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.Implementation.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.eGRPC.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.Construction.area.total
get_metric -raw -id current -uuid deb4c47d-e42b-4089-b795-3fe0565045d4 clock.Implementation.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.Routing.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.PostConditioning.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.eGRPC.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.Routing.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.Implementation.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.eGRPC.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.Construction.area.total
get_metric -raw -id current -uuid a9c5ef7d-34e8-4eb2-9733-5e64c78f48a3 clock.Implementation.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.Routing.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.PostConditioning.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.eGRPC.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.Routing.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.Implementation.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.eGRPC.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.Construction.area.total
get_metric -raw -id current -uuid 4149fc29-f099-4935-af6f-1b7aaca0a74d clock.Implementation.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.Routing.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.PostConditioning.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.eGRPC.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.Routing.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.Implementation.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.eGRPC.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.Construction.area.total
get_metric -raw -id current -uuid 68b0c8db-d2bb-416d-8441-1784937b6b14 clock.Implementation.area.total
um::get_metric_definition -name *.drc
um::get_metric_definition -name *.drc.layer:*
um::get_metric_definition -name *.drc.layer:*.type:*
um::get_metric_definition -name *.drc.type:*
um::get_metric_definition -name check.drc
um::get_metric_definition -name check.drc.antenna
um::get_metric_definition -name check.place.*
um::get_metric_definition -name clock.area.buffer
um::get_metric_definition -name clock.area.clkgate
um::get_metric_definition -name clock.area.inverter
um::get_metric_definition -name clock.area.logic
um::get_metric_definition -name clock.area.nonicg
um::get_metric_definition -name clock.area.total
um::get_metric_definition -name clock.area_distribution.buffer.base_cell:*
um::get_metric_definition -name clock.area_distribution.clkgate.base_cell:*
um::get_metric_definition -name clock.area_distribution.inverter.base_cell:*
um::get_metric_definition -name clock.area_distribution.logic.base_cell:*
um::get_metric_definition -name clock.area_distribution.nonicg.base_cell:*
um::get_metric_definition -name clock.buffer_depth_constraint.skew_group:*.*
um::get_metric_definition -name clock.capacitance.gate.leaf
um::get_metric_definition -name clock.capacitance.gate.top
um::get_metric_definition -name clock.capacitance.gate.trunk
um::get_metric_definition -name clock.capacitance.sink.*
um::get_metric_definition -name clock.capacitance.total.leaf
um::get_metric_definition -name clock.capacitance.total.top
um::get_metric_definition -name clock.capacitance.total.trunk
um::get_metric_definition -name clock.capacitance.wire.leaf
um::get_metric_definition -name clock.capacitance.wire.top
um::get_metric_definition -name clock.capacitance.wire.trunk
um::get_metric_definition -name clock.drv.nets.capacitance.*
um::get_metric_definition -name clock.drv.nets.capacitance.count
um::get_metric_definition -name clock.drv.nets.capacitance.max
um::get_metric_definition -name clock.drv.nets.fanout.*
um::get_metric_definition -name clock.drv.nets.fanout.count
um::get_metric_definition -name clock.drv.nets.fanout.max
um::get_metric_definition -name clock.drv.nets.length.*
um::get_metric_definition -name clock.drv.nets.length.count
um::get_metric_definition -name clock.drv.nets.length.max
um::get_metric_definition -name clock.drv.nets.remaining
um::get_metric_definition -name clock.drv.nets.resistance.*
um::get_metric_definition -name clock.drv.nets.resistance.count
um::get_metric_definition -name clock.drv.nets.resistance.max
um::get_metric_definition -name clock.drv.nets.unfixable
um::get_metric_definition -name clock.halo.clock_tree:*.count
um::get_metric_definition -name clock.halo.clock_tree:*.violations
um::get_metric_definition -name clock.instances.buffer
um::get_metric_definition -name clock.instances.buffer.creator.*
um::get_metric_definition -name clock.instances.clkgate
um::get_metric_definition -name clock.instances.inverter
um::get_metric_definition -name clock.instances.inverter.creator.*
um::get_metric_definition -name clock.instances.logic
um::get_metric_definition -name clock.instances.nonicg
um::get_metric_definition -name clock.instances.total
um::get_metric_definition -name clock.instances_distribution.buffer.base_cell:*
um::get_metric_definition -name clock.instances_distribution.clkgate.base_cell:*
um::get_metric_definition -name clock.instances_distribution.inverter.base_cell:*
um::get_metric_definition -name clock.instances_distribution.logic.base_cell:*
um::get_metric_definition -name clock.instances_distribution.nonicg.base_cell:*
um::get_metric_definition -name clock.latency.primary_reporting_skew_group.primary_half_corner.*
um::get_metric_definition -name clock.latency.skew_group:*.delay_corner:*.early.*
um::get_metric_definition -name clock.latency.skew_group:*.delay_corner:*.late.*
um::get_metric_definition -name clock.nets.length.leaf
um::get_metric_definition -name clock.nets.length.top
um::get_metric_definition -name clock.nets.length.total
um::get_metric_definition -name clock.nets.length.trunk
um::get_metric_definition -name clock.skew.primary_reporting_skew_group.primary_half_corner.*
um::get_metric_definition -name clock.skew.primary_reporting_skew_group.primary_half_corner.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.gate
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.target
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.target_met
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.total
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.early.wire
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.gate
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.skew_band.*
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.target
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.target_met
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.total
um::get_metric_definition -name clock.skew.skew_group:*.delay_corner:*.late.wire
um::get_metric_definition -name clock.stage_depth_constraint.*
um::get_metric_definition -name clock.transition.auto_target.delay_corner:*.early.clock_tree:*
um::get_metric_definition -name clock.transition.auto_target.delay_corner:*.late.clock_tree:*
um::get_metric_definition -name clock.transition.primary_half_corner.leaf.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.leaf.*.max
um::get_metric_definition -name clock.transition.primary_half_corner.top.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.top.*.max
um::get_metric_definition -name clock.transition.primary_half_corner.trunk.*.*
um::get_metric_definition -name clock.transition.primary_half_corner.trunk.*.max
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.leaf.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.top.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.early.trunk.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.leaf.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.top.clock_tree:*
um::get_metric_definition -name clock.transition.target.delay_corner:*.late.trunk.clock_tree:*
um::get_metric_definition -name clock.transition.target.primary_half_corner.leaf.*
um::get_metric_definition -name clock.transition.target.primary_half_corner.top.*
um::get_metric_definition -name clock.transition.target.primary_half_corner.trunk.*
um::get_metric_definition -name design.area
um::get_metric_definition -name design.area.always_on
um::get_metric_definition -name design.area.blackbox
um::get_metric_definition -name design.area.buffer
um::get_metric_definition -name design.area.combinatorial
um::get_metric_definition -name design.area.hinst:*
um::get_metric_definition -name design.area.icg
um::get_metric_definition -name design.area.inverter
um::get_metric_definition -name design.area.io
um::get_metric_definition -name design.area.isolation
um::get_metric_definition -name design.area.latch
um::get_metric_definition -name design.area.level_shifter
um::get_metric_definition -name design.area.logical
um::get_metric_definition -name design.area.macro
um::get_metric_definition -name design.area.physical
um::get_metric_definition -name design.area.power_switch
um::get_metric_definition -name design.area.register
um::get_metric_definition -name design.area.std_cell
um::get_metric_definition -name design.area.vth:*
um::get_metric_definition -name design.area.vth:*.ratio
um::get_metric_definition -name design.blockages.place.area
um::get_metric_definition -name design.blockages.route.area
um::get_metric_definition -name design.blockages.route.area.layer:*
um::get_metric_definition -name design.congestion.hotspot.max
um::get_metric_definition -name design.congestion.hotspot.total
um::get_metric_definition -name design.density
um::get_metric_definition -name design.floorplan.image
um::get_metric_definition -name design.instances
um::get_metric_definition -name design.instances.always_on
um::get_metric_definition -name design.instances.blackbox
um::get_metric_definition -name design.instances.buffer
um::get_metric_definition -name design.instances.combinatorial
um::get_metric_definition -name design.instances.hinst:*
um::get_metric_definition -name design.instances.icg
um::get_metric_definition -name design.instances.inverter
um::get_metric_definition -name design.instances.io
um::get_metric_definition -name design.instances.isolation
um::get_metric_definition -name design.instances.latch
um::get_metric_definition -name design.instances.level_shifter
um::get_metric_definition -name design.instances.logical
um::get_metric_definition -name design.instances.macro
um::get_metric_definition -name design.instances.physical
um::get_metric_definition -name design.instances.power_switch
um::get_metric_definition -name design.instances.register
um::get_metric_definition -name design.instances.std_cell
um::get_metric_definition -name design.instances.vth:*
um::get_metric_definition -name design.instances.vth:*.ratio
um::get_metric_definition -name design.multibit.*
um::get_metric_definition -name design.name
um::get_metric_definition -name design.route.drc.image
um::get_metric_definition -name flow.cputime
um::get_metric_definition -name flow.cputime.total
um::get_metric_definition -name flow.last_child_snapshot
um::get_metric_definition -name flow.log
um::get_metric_definition -name flow.machine
um::get_metric_definition -name flow.machine.cpu.frequency
um::get_metric_definition -name flow.machine.cpu.model
um::get_metric_definition -name flow.machine.cpu.number
um::get_metric_definition -name flow.machine.hostname
um::get_metric_definition -name flow.machine.load
um::get_metric_definition -name flow.machine.memory.free
um::get_metric_definition -name flow.machine.memory.total
um::get_metric_definition -name flow.machine.os
um::get_metric_definition -name flow.machine.swap.free
um::get_metric_definition -name flow.machine.swap.total
um::get_metric_definition -name flow.memory
um::get_metric_definition -name flow.memory.resident
um::get_metric_definition -name flow.memory.resident.peak
um::get_metric_definition -name flow.realtime
um::get_metric_definition -name flow.realtime.total
um::get_metric_definition -name flow.root_config
um::get_metric_definition -name flow.run_directory
um::get_metric_definition -name flow.run_tag
um::get_metric_definition -name flow.step.tcl
um::get_metric_definition -name flow.template.feature_enabled
um::get_metric_definition -name flow.template.type
um::get_metric_definition -name flow.tool_list
um::get_metric_definition -name flow.user
um::get_metric_definition -name flowtool.status
um::get_metric_definition -name messages
um::get_metric_definition -name name
um::get_metric_definition -name power
um::get_metric_definition -name power.clock
um::get_metric_definition -name power.hinst:*
um::get_metric_definition -name power.internal
um::get_metric_definition -name power.internal.hinst:*
um::get_metric_definition -name power.internal.type:*
um::get_metric_definition -name power.leakage
um::get_metric_definition -name power.leakage.hinst:*
um::get_metric_definition -name power.leakage.type:*
um::get_metric_definition -name power.switching
um::get_metric_definition -name power.switching.hinst:*
um::get_metric_definition -name power.switching.type:*
um::get_metric_definition -name route.drc
um::get_metric_definition -name route.drc.antenna
um::get_metric_definition -name route.drc.layer:*
um::get_metric_definition -name route.map.*
um::get_metric_definition -name route.overflow
um::get_metric_definition -name route.overflow.horizontal
um::get_metric_definition -name route.overflow.layer:*
um::get_metric_definition -name route.overflow.vertical
um::get_metric_definition -name route.shielding.*
um::get_metric_definition -name route.via
um::get_metric_definition -name route.via.layer:*
um::get_metric_definition -name route.via.multicut
um::get_metric_definition -name route.via.multicut.layer:*
um::get_metric_definition -name route.via.multicut.percentage
um::get_metric_definition -name route.via.singlecut
um::get_metric_definition -name route.via.singlecut.layer:*
um::get_metric_definition -name route.via.singlecut.percentage
um::get_metric_definition -name route.via.total
um::get_metric_definition -name route.wirelength
um::get_metric_definition -name timing.drv.max_cap.total
um::get_metric_definition -name timing.drv.max_cap.worst
um::get_metric_definition -name timing.drv.max_fanout.total
um::get_metric_definition -name timing.drv.max_fanout.worst
um::get_metric_definition -name timing.drv.max_length.total
um::get_metric_definition -name timing.drv.max_length.worst
um::get_metric_definition -name timing.drv.max_tran.total
um::get_metric_definition -name timing.drv.max_tran.worst
um::get_metric_definition -name timing.hold.feps
um::get_metric_definition -name timing.hold.feps.analysis_view:*
um::get_metric_definition -name timing.hold.feps.path_group:*
um::get_metric_definition -name timing.hold.feps.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.feps.path_group:reg2reg
um::get_metric_definition -name timing.hold.histogram
um::get_metric_definition -name timing.hold.histogram.views
um::get_metric_definition -name timing.hold.tns
um::get_metric_definition -name timing.hold.tns.analysis_view:*
um::get_metric_definition -name timing.hold.tns.path_group:*
um::get_metric_definition -name timing.hold.tns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.tns.path_group:reg2reg
um::get_metric_definition -name timing.hold.type
um::get_metric_definition -name timing.hold.wns
um::get_metric_definition -name timing.hold.wns.analysis_view:*
um::get_metric_definition -name timing.hold.wns.path_group:*
um::get_metric_definition -name timing.hold.wns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.hold.wns.path_group:reg2reg
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.feps.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.tns.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.clocktree.wns.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.feps.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.tns.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.analysis_view:%.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.analysis_view:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.analysis_view:*.clock:*
um::get_metric_definition -name timing.min_pulse_width.endpoints.wns.clock:*
um::get_metric_definition -name timing.setup.feps
um::get_metric_definition -name timing.setup.feps.analysis_view:*
um::get_metric_definition -name timing.setup.feps.path_group:*
um::get_metric_definition -name timing.setup.feps.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.feps.path_group:reg2reg
um::get_metric_definition -name timing.setup.histogram
um::get_metric_definition -name timing.setup.histogram.views
um::get_metric_definition -name timing.setup.tns
um::get_metric_definition -name timing.setup.tns.analysis_view:*
um::get_metric_definition -name timing.setup.tns.path_group:*
um::get_metric_definition -name timing.setup.tns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.tns.path_group:reg2reg
um::get_metric_definition -name timing.setup.type
um::get_metric_definition -name timing.setup.wns
um::get_metric_definition -name timing.setup.wns.analysis_view:*
um::get_metric_definition -name timing.setup.wns.path_group:*
um::get_metric_definition -name timing.setup.wns.path_group:*.analysis_view:*
um::get_metric_definition -name timing.setup.wns.path_group:reg2reg
um::get_metric_definition -name timing.si.double_clocking.analysis_view:*
um::get_metric_definition -name timing.si.double_clocking.frequency_violations.analysis_view:*
um::get_metric_definition -name timing.si.double_clocking.report_file.analysis_view:*
um::get_metric_definition -name timing.si.glitches
um::get_metric_definition -name timing.si.noise
um::get_metric_definition -name transition.*
um::get_metric_definition -name transition.count
um::get_metric_definition -name transition.max
getVersion
saveDesign checkpoints/design.checkpoint/save.enc -user_path
