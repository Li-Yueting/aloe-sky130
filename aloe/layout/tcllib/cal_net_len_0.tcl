proc netLength {netName} {
  set length 0
  foreach wirePtr [dbGet [dbGet -p top.nets.name $netName].wires] {
    set length [expr $length + [dbGet $wirePtr.length]]
  }
  return $length
}

set stub [format "/home/pohsuan/repo.git/aloe/layout/engine/expr_hof/net_len%01d" 0]
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
