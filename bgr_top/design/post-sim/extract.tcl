gds read ./inputs/design_merged.gds
load bgr_top
select top cell 
extract do local
extract all
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -o design_parasitic_extracted.spice
exit