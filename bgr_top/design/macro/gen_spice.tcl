gds flatten true
gds read ./inputs/design-merged.gds
load bgr_top
select top cell 
extract do local
extract all
ext2spice lvs
ext2spice cthresh 0
ext2spice extresist on
ext2spice -o ./outputs/bgr_top.spice
exit
