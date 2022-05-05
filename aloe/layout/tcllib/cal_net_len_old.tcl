set curNumFile [open "../engine/opt/run_num.txt" "r"]
set runNum [expr [read $curNumFile]]
close $curNumFile
set stub [format "/home/pohsuan/repo.git/aloe/layout/engine/expr_old/net_len%01d" $runNum]
set netLenFile [join [concat $stub ".txt"] ""]
puts $netLenFile
set filePtr [open $netLenFile "w"]
foreach netPtr [dbGet top.nets] {
  set netName [dbGet $netPtr.name]
  set length [netLength $netName]
  # Report net name if length > 500um
#  if {$length > 500 && [dbGet $netPtr.isPwrOrGnd] == 0} {
  puts $filePtr "$netName $length"
  #   # Report inst and IO terms connected to net
  #   foreach termPtr [dbGet $netPtr.instTerms -e] {
  #     puts $filePtr "  TERM: [dbGet $termPtr.name]"
  #   }
  #   foreach ioPtr [dbGet $netPtr.terms -e] {
  #     puts $filePtr "  IO: [dbGet $ioPtr.name]"
  #   }
  # }
}
close $filePtr