# Script written for Innovus 19.10.000
proc swapCellsOnNet {netName tail} {

  setEcoMode -updateTiming false 
  setEcoMode -LEQCheck false 
  setEcoMode -batchMode true 
  setEcoMode -honorFixedStatus false 
  setEcoMode -honorDontUse false 
  setEcoMode -honorDontTouch false 
  setEcoMode -refinePlace false
  setEcoMode -replicatedModules true
  deselectAll
  selectInstOnNet $netName
  foreach instPtr [dbGet selected] {
    set instCellName [dbGet $instPtr.cell.name]
    if ![string match *$tail $instCellName] {
        set instName [dbGet $instPtr.name]
        set tiedCell [concat $instCellName$tail]
        ecoChangeCell -inst $instName -cell $tiedCell
        unset tiedCell
        unset instName
    }
    unset instCellName
  }
  deselectAll
}

proc swap_cells {args} {
	# Function: 
	# Feature: 
    parse_proc_arguments -args $args options
    # Set default values
    set $options(-net) "VDD"
    set $options(-tail) "_tied"
    # Swap cells
    swapCellsOnNet $options(-net) $options(-tail)
}

define_proc_arguments swap_cells \
    -info "Writes TCL scripts to run.\n" \
    -define_args \
    {{-net "net name" "none" string required}
    {-tail "tied cell identifying string" "none" string optional}
    }
