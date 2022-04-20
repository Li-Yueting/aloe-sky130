proc generate_lef {inst_name} {
	# in magic, alway draw a box and use key "s" to select 
	# the exact inst before running this proc function 
	property LEFclass CORE
	set box_pos [box position]
	set llx [lindex $box_pos  0]
	set lly [lindex $box_pos  1]
	move origin right [$llx]um
    move origin bottom -[$lly]um
	box
	property LEFsite unithddbl
	if {$inst_name==pfet}{
		# GATE
		findlabel GATE
		make port
		# SOURCE
		findlabel SOURCE
		make port
		# DRAIN
		findlabel DRAIN
		make port
		# VPB
		findlabel VPB
		make port
		# VPWR
		findlabel VPWR
		make port
		port class inout
		# VGND
		findlabel VGND
		make port
		port class inout
	}	
}