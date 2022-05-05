set runNum [expr [read $curNumFile]]
close $curNumFile
set stub [format "/home/pohsuan/repo.git/aloe/layout/engine/expr_new/area%01d" $runNum]
set areaFile [join [concat $stub ".txt"] ""]
puts $areaFile
set filePtr [open $areaFile "w"]

foreach groupPtr [dbGet top.groups] {
    set groupName [dbGet $groupPtr.name]
    set areaRatio [areaRatio -group $groupName]
    puts $filePtr "groupName $areaRatio"
}

#foreach netPtr [dbGet top.nets] {
#  set netName [dbGet $netPtr.name]
#  set length [area $netName]
#  puts $filePtr "$netName $length"
#}
close $filePtr
