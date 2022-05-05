proc find_phys_cells {dcapNamePattern} {
  set physCells [dbGet top.physInsts.cell.defName]
  set uniquePhysCells [lsort -unique $physCells]
  foreach cell $uniquePhysCells {
    if [string match $dcapNamePattern $cell] {
    lappend dcapCells $cell
    }
  }
  return $dcapCells
}

proc save_lvs_netlist {args} {
  parse_proc_arguments -args $args options
  # default settings
  set $options(-dcapNamePattern) "FILLSGCAP*"
  set $options(-fVerilog) "netlist.v"
  set dcapCells [find_phys_cells $options(-dcapNamePattern)]
  if {$options(-flat)} {
      saveNetlist -includePhysicalCell $dcapCells \
      -includePowerGround $options(-fVerilog) \
      -flattenBus \
      -flat \
  } else {
      saveNetlist -includePhysicalCell $dcapCells \
      -includePowerGround $options(-fVerilog) \
      -flattenBus \
      -flat \
  }
}

define_proc_arguments save_lvs_netlist \
  -define_args \
  {{-dcapNamePattern "regex pattern of dcaps" "none" string required}\
   {-fVerilog "file name to be saved" "none" string required}\
   {-flat "export flat or hierarchical verilog" "" boolean optional}\
  }
