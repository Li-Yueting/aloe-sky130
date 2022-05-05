# Script written for Innovus 19.10.000
proc netCenter {netName} {
  deselectAll
  selectNet $netName
  set list_x [dbGet selected.allTerms.pt_x]
  set list_y [dbGet selected.allTerms.pt_y]
  set avg_x [average $list_x]
  set avg_y [average $list_y]
  deselectAll
  return [list $avg_x $avg_y]
  puts $avg_x 
  unset netPtr
  unset list_x
  unset list_y
  unset avg_x
  unset avg_y
}
proc net_center {args} {
  parse_proc_arguments -args $args options
  # Swap cells
  set netName $options(-net)
  puts "$netName has center coordinates"
  puts [netCenter $netName]
}
define_proc_arguments net_center \
  -info "Gives mean coordinate of a net from its terms.\n" \
  -define_args \
  {{-net "net name" "none" string required}
  }
