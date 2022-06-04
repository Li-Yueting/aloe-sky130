# netgen option to exclude fill and tap from source
export MAGIC_EXT_USE_GDS=1

netgen -batch lvs "inputs/design_extracted.spice "bgr_top"" "design_lvs.spice "bgr_top"" inputs/adk/netgen_setup.tcl outputs/lvs_results.log
