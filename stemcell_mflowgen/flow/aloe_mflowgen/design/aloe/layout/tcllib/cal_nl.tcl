proc netLength {netName} {
  set netPtr [dbGet -p top.nets.name $netName]
  set length [dbGet $netPtr.terms.depth]
  foreach wirePtr [dbGet $netPtr.wires] {  
    set length [expr $length + [dbGet $wirePtr.length]]
  }
  return $length
}

proc netArea {netName} {
  set netPtr [dbGet -p top.nets.name $netName]
  set area [expr [dbGet $netPtr.terms.depth]*[dbGet $netPtr.terms.width]]
  foreach wirePtr [dbGet $netPtr.wires] {  
    set area [expr $area + [dbGet $wirePtr.area]]
  }
  return $area
}

proc cal_nl {args} {
	# Function: Calculates wire lengths and write to file
	# Feature: Outputs runtime
    parse_proc_arguments -args $args options
    # Set default values
    set $options(-n) 50
    set $options(-l) 2
    set $options(-d) "aloe/layout/engine/expr_old"
    set $options(-b) ""

    # Set netlength file names
    set format_nl "%s\%0$options(-l)\d.nl"
    set file_nl [format $format_nl $options(-b) $options(-n)]
    set filePtr [open [file join $options(-d) $file_nl] "w"]
    foreach netPtr [dbGet top.nets] {
        set netName [dbGet $netPtr.name]
        set length [netLength $netName]
        puts $filePtr "$netName $length"
    }
    close $filePtr
}

define_proc_arguments cal_nl \
    -info "Writes TCL scripts to run.\n" \
    -define_args \
    {{-n "current run number" "int_value" int required}
    {-l "length of zero-padding" "int_value" int required}
    {-d "expression directory" "none" string required}
    {-b "blk_name" "none" string optional}
    }
