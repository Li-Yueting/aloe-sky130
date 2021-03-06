#=========================================================================
# floorplan.tcl
#=========================================================================
# This script is called from the Innovus init flow step.
#
# Author : Christopher Torng
# Date   : March 26, 2018

#-------------------------------------------------------------------------
# Floorplan variables
#-------------------------------------------------------------------------
set core_aspect_ratio   1.00; # Aspect ratio 1.0 for a square chip
set core_density_target 0.60; # Placement density of 70% is reasonable
# Make room in the floorplan for the core power ring
set pwr_net_list {VDD VSS}; # List of power nets in the core power ring

set M1_min_width   [dbGet [dbGetLayerByZ 1].minWidth]
set M1_min_spacing [dbGet [dbGetLayerByZ 1].minSpacing]

set savedvars(p_ring_width)   [expr 48 * $M1_min_width];   # Arbitrary!
set savedvars(p_ring_spacing) [expr 24 * $M1_min_spacing]; # Arbitrary!

# Core bounding box margins
set core_margin_t [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]
set core_margin_b [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]
set core_margin_r [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]
set core_margin_l [expr ([llength $pwr_net_list] * ($savedvars(p_ring_width) + $savedvars(p_ring_spacing))) + $savedvars(p_ring_spacing)]

# User project area is limited to 2920um x 3520um
#floorPlan -d [expr 2860] \
#             [expr 3470] \
#             $core_margin_l $core_margin_b $core_margin_r $core_margin_t

floorPlan -d [expr 800] \
             [expr 700] \
             $core_margin_l $core_margin_b $core_margin_r $core_margin_t
setFlipping s

placeInstance bgr_inst_0 140 100
placeInstance switch_vbgr 550 100
placeInstance decoder_vbgr 670 180
# planDesign
# placeInstance puf4_inst/BR32_inst 150 1600
# placeInstance puf4_inst/BR64_inst 150 1500
# placeInstance puf4_inst/BR128_inst 150 1300

# placeInstance puf3_inst/BR32_inst 150 1200
# placeInstance puf3_inst/BR64_inst 150 1100
# placeInstance puf3_inst/BR128_inst 150 900

# placeInstance puf2_inst/BR32_inst 150 800
# placeInstance puf2_inst/BR64_inst 150 700
# placeInstance puf2_inst/BR128_inst 150 500

# placeInstance puf1_inst/BR32_inst 150 400
# placeInstance puf1_inst/BR64_inst 150 300
# placeInstance puf1_inst/BR128_inst 150 100

addHaloToBlock 15 15 15 15 -allBlock
