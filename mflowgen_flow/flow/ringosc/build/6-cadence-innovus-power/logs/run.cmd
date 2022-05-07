#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu May  5 14:27:01 2022                
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
restoreDesign /home/users/xingyuni/ee372/mflowgen_flow/aloe-sky130/ringosc/build/5-cadence-innovus-init/checkpoints/design.checkpoint/save.enc.dat ringosc
setDistributeHost -local
setMultiCpuUsage -localCpu 16
globalNetConnect VDD -type pgpin -pin VPWR -inst * -verbose
globalNetConnect VSS -type pgpin -pin VGND -inst * -verbose
globalNetConnect VSS -type pgpin -pin VNB -inst * -verbose
globalNetConnect VDD -type pgpin -pin VPB -inst * -verbose
sroute -nets {VDD VSS} -connect corePin
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top 6 bottom 6 left 5 right 5} -width 4 -spacing 8 -offset 8 -extend_corner {tl tr bl br lt lb rt rb}
setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false
setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer 2 -stacked_via_top_layer 6
addStripe -nets {VSS VDD} -layer 5 -direction vertical -width 3.36 -spacing 10.24 -set_to_set_distance 27.2 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start 13.6
setViaGenMode -reset
setViaGenMode -viarule_preference default
setViaGenMode -ignore_DRC false
setAddStripeMode -reset
setAddStripeMode -stacked_via_bottom_layer 5 -stacked_via_top_layer 6
addStripe -nets {VSS VDD} -layer 6 -direction horizontal -width 3.36 -spacing 10.24 -set_to_set_distance 27.2 -max_same_layer_jog_length 13.6 -padcore_ring_bottom_layer_limit 5 -padcore_ring_top_layer_limit 6 -start 13.6
getVersion
saveDesign checkpoints/design.checkpoint/save.enc -user_path
