# _name_        interface.tcl
# _function_    exam values of 4 objective functions: area, netweight, netlength, mismatch variation 
# _author_      Yueting Li
# _date_        08-30-2022

proc interface {outdir design_name} {
    signoff $outdir $design_name
    layout_summary $outdir $design_name
}

proc signoff {outdir design_name} {
    # verification
    verifyConnectivity -noAntenna
    verify_drc
    create_snapshot -name signoff -categories design
    report_metric -file reports/metrics.html -format html
    # design.gds.gz
    streamOut $outdir/$design_name.gds.gz \
        -units 1000                       \
        -mapFile inputs/adk/rtk-stream-out.map
    # design.gds
    streamOut $outdir/$design_name-merged.gds  \
        -units 1000                            \
        -mapFile inputs/adk/rtk-stream-out.map \
        -merge inputs/adk/stdcells.gds
    # design.lvs.v
    saveNetlist -excludeLeafCell           \
        -flat                              \
        -phys                              \
        $outdir/$design_name.lvs.v
    # design.lef
    write_lef_abstract -5.8 -extractBlockObs $outdir/$design_name.lef
    # design.def.gz
    defOut -routing $outdir/$design_name.def.gz
} 

proc layout_summary {outdir design_name} {
    set filename [file join $outdir "layoutSum.txt"]
    # Objective 1 - Area & Utilization
    set chip_area [dbget top.fplan.area]
    set chip_core_box [dbGet top.fPlan.corebox]
    set llx [lindex [lindex $chip_core_box 0] 0]
    set lly [lindex [lindex $chip_core_box 0] 1]
    set urx [lindex [lindex $chip_core_box 0] 2]
    set ury [lindex [lindex $chip_core_box 0] 3]
    set chip_core_area [expr [expr $urx-$llx]*[expr $ury-$lly]]
    set std_area 0
    foreach area [dbGet top.insts.area] {
        set std_area [expr $std_area + $area]
    }
    set core_utilization [expr $std_area/$chip_core_area]
    set chip_utilization [expr $std_area/$chip_area] 
    # Objective 2 - Net Length & Weight
    set net_name [dbGet top.nets.name] ;#net name list
    set net_weight [dbGet top.nets.weight] ;# net weight list 
    set net_length [list] ;#net length list
    set net_total_length 0 
    foreach netPtr [dbGet top.nets] {
        set netName [dbGet $netPtr.name]
        set length [netLength $netName]
        lappend net_length $length
        set net_total_length [expr $net_total_length + $length]
    }
    # Objective 3 - Symmetry 
    # Objective 4 - Variation

    # OUTPUT
    set fp [open $filename w+] ;# open the filename for writing
        puts $fp "Current Layout Characteristics"
        puts $fp "==================================================="
        puts $fp "chip_area: $chip_area" ;# omitting '-nonewline' will result in an extra newline
        puts $fp "chip_core_area: $chip_core_area"
        puts $fp "std_area: $std_area"
        puts $fp "net_total_length: $net_total_length"
        puts $fp "core_utilization: $core_utilization"
        puts $fp "chip_utilization: $chip_utilization"
        puts $fp "----------------------------------------------------"
        puts $fp [format "%-20s %-20s %-20s" "NetName" "NetWeight" "NetLength"]
        for {set i 0} {$i< [llength $net_name]} {incr i} {
            puts $fp [format "%-20s %-20s %-20s" [lindex $net_name $i] [lindex $net_weight $i] [lindex $net_length $i]]
        }
        # puts $fp "net_name: $net_name"
        # puts $fp "net_weight: $net_weight"
        # puts $fp "net_length: $net_length"
    close $fp
}

proc netLength {netName} {
  set length 0
  foreach wirePtr [dbGet [dbGet -p top.nets.name $netName].wires] {
    set length [expr $length + [dbGet $wirePtr.length]]
  }
  return $length
}