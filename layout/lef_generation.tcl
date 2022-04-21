# in magic, alway draw a box and use key "s" to select 
# the exact inst before running this proc function 
proc generate_lef {inst_name} {
    append inst_name "_flat"
    flatten $inst_name
    load $inst_name
    box -1000 -1000 1000 1000
    select cell
    property LEFclass CORE  
    set box_pos [box position]    
    set llx [lindex $box_pos 0]    
    set lly [lindex $box_pos 1]    
    move origin right [expr $llx/2]  
    move origin bottom [expr -$lly/2]
    puts "Now the origin is:"    
    box
    property LEFsite unithddbl  
    if {$inst_name=={pmos_flat}} {
        # GATE
        findlabel GATE
        port GATE make "nsew"
        port class inout
        port use signal 
        # SOURCE
        findlabel SOURCE
        port SOURCE make "nsew"
        port class inout 
        port use signal 
        # DRAIN
        findlabel DRAIN
        port DRAIN make "nsew"
        port class inout 
        port use signal 
        # VPB
        findlabel VPB
        port VPB make "nsew"
        port class inout
        port use signal 
        # VPWR
        findlabel VPWR
        port VPWR make "nsew"
        port class bidirectional
        port use power
        # VGND
        findlabel VGND
        port VGND make "nsew"
        port class bidirectional
        port use ground
        save sky130_asc_pfet_01v8_lvt_1.mag
        lef write sky130_asc_pfet_01v8_lvt_1.lef
	} elseif {$inst_name=={nmos_flat}} {
        # GATE
        findlabel GATE
        port make 
        port class inout
        # SOURCE
        findlabel SOURCE
        port make 
        port class inout
        # DRAIN
        findlabel DRAIN
        port make 
        port class inout
        # VNB
        findlabel VNB
        port make 
        port class inout
        # VPWR
        findlabel VPWR
        port make 
        port class inout
        port use power
        # VGND
        findlabel VGND
        port make 
        port class inout
        port use ground
        lef write sky130_asc_nfet_01v8_lvt_1.lef
    } else {
        puts "None inst lef generated ..."
    }
}

