# setDesignMode -process 130
# setExtractRCMode -coupled true -effortLevel low
# setAnalysisMode -analysisType onChipVariation -cppr both

# set vars(gds_layer_map) {inputs/adk/rtk-stream-out.map}
set ::env(stemcell_dir) /home/users/xingyuni/ee372/aloe-sky130/aloe/stemcell
set ::env(gds_dir) /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/gds
set ::env(lvs_dir) /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/lvs
set ::env(def_dir) /home/users/xingyuni/ee372/aloe-sky130/aloe/layout/output/def
streamOut $env(gds_dir)/bgr-v0-final.gds.gz \
   -units 1000 \
   -mapFile $env(stemcell_dir)/rtk-stream-out.map

set merge_files \
[concat \
[lsort [glob -nocomplain $env(stemcell_dir)/*.gds*]] \
]
streamOut $env(gds_dir)/bgr-v0-final-merged.gds \
   -units 1000 \
   -mapFile $env(stemcell_dir)/rtk-stream-out.map \
   -merge $merge_files

# Write netlist for LVS check
saveNetlist -excludeLeafCell -flat -phys $env(lvs_dir)/bgr-v0-final.lvs.v
# Save DEF for use in running DC again
defOut -routing $env(def_dir)/bgr-v0-final.def.gz
