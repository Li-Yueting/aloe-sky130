proc viaLength {viaName} {
  set viaPtr [dbGet -p top.vias.name $viaName]
  set length [dbGet $viaPtr.terms.depth]
  foreach wirePtr [dbGet $viaPtr.wires] {  
    set length [expr $length + [dbGet $wirePtr.length]]
  }
  return $length
}

proc viaArea {netName} {
  deselectAll
  editSelectVia -nets $netName -type signal
  set viaPtrs [dbGet selected]
  set area [expr [dbGet $viaPtrs.terms.depth]*[dbGet $viaPtr.terms.width]]
  foreach wirePtr [dbGet $viaPtr.wires] {  
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

    # Set vialength file names
    set format_nl "%s\%0$options(-l)\d.nl"
    set file_nl [format $format_nl $options(-b) $options(-n)]
    set filePtr [open [file join $options(-d) $file_nl] "w"]
    foreach viaPtr [dbGet top.vias] {
        set viaName [dbGet $viaPtr.name]
        set length [viaLength $viaName]
        puts $filePtr "$viaName $length"
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
