
proc shift_to_center {} {
	set res1 [box size]
	move [expr {-[lindex $res1 0] / 2}]i [expr {-[lindex $res1 1] / 2}]i
	return $res1
}

proc place_pmos {x_center y_center length nf index} {
	load pmos
	# input arg [um]
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__pfet_01v8_lvt [format "xm%d" $index] w 6.45 l $length m 1 nf $nf diffcov 100 polycov 100 guard 0 glc 0 grc 0 gtc 0 gbc 0 tbcov 0 rlcov 0 topc 0 botc 0 poverlap 0 doverlap 1 lmin 0.15 wmin 0.42 compatible {sky130_fd_pr__pfet_01v8  sky130_fd_pr__pfet_01v8_lvt sky130_fd_pr__pfet_01v8_hvt  sky130_fd_pr__pfet_g5v0d10v5} full_metal 0 viasrc 100 viadrn 100 viagate 0 viagb 0 viagr 0 viagl 0 viagt 0
	set box_size [shift_to_center]
	set bx [expr {[lindex $box_size 0]/2}]
	set by [expr {[lindex $box_size 1]/2}]
	puts "by is : $by"
	set height_half_center 380
	set power_half_w 30
	set con_w 30
	### unit conversion here
	set con_sep  [expr $length*100]
	set x_center [expr $x_center*100]
	set y_center [expr $y_center*100]
	### extend NWELL
	box [expr $x_center-$bx/2] [expr $y_center] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $power_half_w+60]
	paint nwell
	#------- label VPB
	box [expr $x_center-$bx/2+100-$con_w/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center-$bx/2+100+$con_w/2] [expr $y_center+$height_half_center+$con_w/2+60]
	paint nwell
	label VPB FreeSans 50
	### paint VDD
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center - $power_half_w+60] [expr $x_center + $bx/2] [expr $y_center + $height_half_center + $power_half_w+60]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $con_w/2+60]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center-$bx/2+$x+$con_w/2] [expr $y_center+$height_half_center+$con_w/2+60]
		paint viali
	}
	#------ label VPWR
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center-$bx/2+$con_w] [expr $y_center+$height_half_center+$con_w/2+60]
	paint m1
	label VPWR FreeSans 50
	### paint VSS
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$power_half_w-120] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$power_half_w-120]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2-120]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center-$height_half_center+$con_w/2-120]
		paint viali
	}
	#------ label VGND
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center-$bx/2+$con_w] [expr $y_center-$height_half_center+$con_w/2-120]
	paint m1
	label VGND FreeSans 50 
	### paint SOURCE rail
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center+$height_half_center+$con_w/2]
	paint li
	#------ label SOURCE
	box [expr $x_center+$bx/2-$con_w] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center+$height_half_center+$con_w/2]
	paint li
	label SOURCE FreeSans 50
	### paint DRAIN rail
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2]
	paint li
	#------ label DRAIN
	box [expr $x_center+$bx/2-$con_w] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2]
	paint li
	label DRAIN FreeSans 50
	### paint GATE rail
	set gate_w 50  
	box [expr $x_center-$bx/2] [expr $y_center-$by/2-80-$gate_w/2] [expr $x_center+$bx/2]  [expr $y_center-$by/2-80+$gate_w/2]
	paint p
	box [expr $x_center-$bx/2] [expr $y_center-$by/2-80-15] [expr $x_center+$bx/2]  [expr $y_center-$by/2-80+15]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center - $bx/2 + $x - $con_w/2] [expr $y_center - $by/2 - $con_w/2 - 80] [expr $x_center - $bx/2 + $x+$con_w/2] [expr $y_center - $by/2 + $con_w/2 - 80]
		paint pcontact
	}
	#------ label GATE
	box [expr $x_center+$bx/2-$con_w] [expr $y_center - $by/2 - $con_w/2 - 80] [expr $x_center+$bx/2] [expr $y_center - $by/2 + $con_w/2 - 80]
	paint li
	label GATE FreeSans 50
	### paint GATE connection
	for {set x 150} {$x+$con_w + 28<=$bx} {set x [expr $x + $con_sep + 28]} {
		box [expr $x_center-$bx/2+$x-$con_w] [expr $y_center-$by/2-70] [expr $x_center-$bx/2+$x+$con_w] [expr $y_center-$by/2+$con_w]
		paint polysilicon
	}
	### paint source connection
	for {set x [expr 23.5+$con_sep+29]} {$x+29<=$bx} {set x [expr $x+2*$con_sep+2*29]} {
		box [expr $x_center-$bx/2+$x] [expr $y_center+$by/2-40] [expr $x_center-$bx/2+$x+17] [expr $y_center+$height_half_center]
		paint li
	}
	### paint drain connection
	for {set x 23.5} {$x+29<=$bx} {set x [expr $x+2*$con_sep+2*29]} {
		box [expr $x_center-$bx/2+$x] [expr $y_center-$by/2+40] [expr $x_center-$bx/2+$x+17] [expr $y_center-$height_half_center]
		paint li
	}
	return $box_size
}

proc place_nmos {x_center y_center length nf index} {
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__nfet_01v8_lvt [format "xm%d" $index] w 3 l $length m 1 nf $nf diffcov 100 polycov 100 guard 0 glc 0 grc 0 gtc 0 gbc 0 tbcov 0 rlcov 0 topc 0 botc 0 poverlap 0 doverlap 1 lmin 0.15 wmin 0.42 compatible {sky130_fd_pr__pfet_01v8  sky130_fd_pr__pfet_01v8_lvt sky130_fd_pr__pfet_01v8_hvt  sky130_fd_pr__pfet_g5v0d10v5} full_metal 0 viasrc 100 viadrn 100 viagate 0 viagb 0 viagr 0 viagl 0 viagt 0
	set box_size [shift_to_center]
	set bx [expr {[lindex $box_size 0]/2}]
	set by [expr {[lindex $box_size 1]/2}]
	puts "by is : $by"
	set height_half_center 380
	set power_half_w 30
	set con_w 30
	### unit conversion here
	set con_sep  [expr $length*100] 
	set x_center [expr $x_center*100]
	set y_center [expr $y_center*100]
	### extend PWELL to VSS
	box [expr $x_center-$bx/2] [expr $y_center] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2-120]
	paint pwell
	#------ Label VNB
	box [expr $x_center + $bx/2 - $con_w] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center + $bx/2] [expr $y_center-$height_half_center+$con_w/2-120]
	paint pwell
	label VNB FreeSans 50
	### paint VDD
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center - $power_half_w+60] [expr $x_center + $bx/2] [expr $y_center + $height_half_center + $power_half_w+60]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $con_w/2+60]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center-$bx/2+$x+$con_w/2] [expr $y_center+$height_half_center+$con_w/2+60]
		paint viali
	}
	#------ Label VPWR
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2+60] [expr $x_center-$bx/2+$con_w] [expr $y_center+$height_half_center+$con_w/2+60]
	paint m1
	label VPWR FreeSans 50
	### paint VSS
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$power_half_w-120] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$power_half_w-120]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2-120]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center-$bx/2+$x+$con_w/2] [expr $y_center-$height_half_center+$con_w/2-120]
		paint viali
	}
	#------ Label VGND
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2-120] [expr $x_center-$bx/2+$con_w] [expr $y_center-$height_half_center+$con_w/2-120]
	paint m1
	label VGND FreeSans 50 
	### paint SOURCE rail
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2-20] [expr $x_center+$bx/2] [expr $y_center+$height_half_center+$con_w/2-20]
	paint li
	#------ Label SOURCE
	box [expr $x_center+$bx/2-$con_w] [expr $y_center+$height_half_center-$con_w/2-20] [expr $x_center+$bx/2] [expr $y_center+$height_half_center+$con_w/2-20]
	paint li
	label SOURCE FreeSans 50
	### paint DRAIN rail
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2+80] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2+80]
	paint li
	#------ Label DRAIN
	box [expr $x_center+$bx/2-$con_w] [expr $y_center-$height_half_center-$con_w/2+80] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2+80]
	paint li
	label DRAIN FreeSans 50
	### paint GATE rail
	set gate_w 50  
	box [expr $x_center-$bx/2] [expr $y_center-$by/2-$gate_w/2-200] [expr $x_center+$bx/2] [expr $y_center-$by/2+$gate_w/2-200]
	paint p
	box [expr $x_center-$bx/2] [expr $y_center-$by/2-200-15] [expr $x_center+$bx/2] [expr $y_center-$by/2-200+15]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center - $bx/2 + $x - $con_w/2] [expr $y_center - $by/2 - $con_w/2 - 200] [expr $x_center - $bx/2 + $x+$con_w/2] [expr $y_center - $by/2 + $con_w/2 - 200]
		paint pcontact
	}
	#------ Label GATE
	box [expr $x_center+$bx/2-$con_w] [expr $y_center - $by/2 - $con_w/2 - 200] [expr $x_center+$bx/2] [expr $y_center - $by/2 + $con_w/2 - 200]
	paint li
	label GATE FreeSans 50
	### paint GATE connection
	for {set x 133} {$x+$con_w + 28<=$bx} {set x [expr $x + $con_sep + 28]} {
		box [expr $x_center-$bx/2+$x-$con_w] [expr $y_center-$by/2-200] [expr $x_center-$bx/2+$x+$con_w] [expr $y_center-$by/2+$con_w]
		paint p
	}
	### paint source connection
	for {set x [expr 5.5+$con_sep+29]} {$x+10<=$bx} {set x [expr $x+2*$con_sep+2*29]} {
		box [expr $x_center-$bx/2+$x] [expr $y_center+$by/2-20] [expr $x_center-$bx/2+$x+17] [expr $y_center+$height_half_center+$con_w/2-20]
		paint li
	}
	### paint drain connection
	for {set x 5.5} {$x+29<=$bx} {set x [expr $x+2*$con_sep+2*29]} {
		box [expr $x_center-$bx/2+$x] [expr $y_center-$by/2+40] [expr $x_center-$bx/2+$x+17] [expr $y_center-$height_half_center+80]
		paint li
	}
	return $box_size
}

proc place_sky130_fd_pr__res_xhigh_po_2p85 {x_center y_center width length nx val index} {
	select clear
	puts "\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	puts "index: $index"
	puts "inst_name: sky130_fd_pr__res_xhigh_po"
	puts "x_center: $x_center"
	puts "y_center: $y_center"
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	set params [sky130::sky130_fd_pr__res_xhigh_po_2p85_defaults]
	dict set params term 19.188 
	dict set params w $width
	dict set params l $length
	dict set params nx $nx
	dict set params val $val
	eval magic::gencell sky130::sky130_fd_pr__res_xhigh_po_2p85 [format "xm%d" $index] $params
	
}

proc place_inst {inst_name x_center y_center width length nf index params} {
	select clear
	puts "\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
	puts "index: $index"
	puts "inst_name: $inst_name"
	puts "x_center: $x_center"
	puts "y_center: $y_center"
	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	# edit size(w,l) and finger number
	dict set params w $width
	dict set params l $length
	dict set params nf $nf
	# puts "cell_parameter: $params"
	eval magic::gencell sky130::$inst_name [format "xm%d" $index]  $params
	set box_size [shift_to_center]
	puts "\n whole instance size (width, length): \[$box_size\] \n"
	return $box_size
}


# set customized parameters that usually don't change in one element 
proc inst_param_customize {inst_name guard topc botc doverlap lmin wmin viagate} {
	append inst_name "_defaults"
	set params [sky130::$inst_name]
	dict set params guard $guard
	dict set params topc $topc
	dict set params botc $botc
	dict set params doverlap $doverlap
	dict set params lmin $lmin
	dict set params wmin $wmin
	dict set params viagate $viagate
	return $params
}

# w = 2.85    l = 7.88 x 2
proc place_res {x_center y_center index} {
    set bx 1220
    # set by 
    set height_half_center 440
	set power_half_w 30
	set con_sep 100 ;#unit conversion
	set con_w 30

    box -394 97.5 394 382.5
    paint xpolyres

    box 402.5 105.5 601 374.5
    paint viali
    box 394 97.5 610 382.5
    paint xpolycontact
    box 394 97.5 610 382.5
    paint locali
    box 399.5 99.5 604.5 380.5
    paint metal1

    box -601 105.5 -402.5 374.5
    paint viali
    box -610 97.5 -394 382.5
    paint xpolycontact
    box -610 97.5 -394 382.5
    paint locali
    box -604.5 99.5 -399.5 380.5
    paint metal1
    box -550 210 -490 270
    label Rin FreeSans 30

    box -394 -382.5 394 -97.5
    paint xpolyres

    box 402.5 -374.5 601 -105.5
    paint viali
    box 394 -382.5 610 -97.5
    paint xpolycontact
    box 394 -382.5 610 -97.5
    paint locali
    box 399.5 -380.5 604.5 -99.5
    paint metal1

    box -601 -374.5 -402.5 -105.5
    paint viali
    box -610 -382.5 -394 -97.5
    paint xpolycontact
    box -610 -382.5 -394 -97.5
    paint locali
    box -604.5 -380.5 -399.5 -99.5
    paint metal1
    box -550 -270 -490 -210
    label Rout FreeSans 30

    box 394 -382.5 610 99.5
    paint m1
    paint locali

	### paint VPWR
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center - $power_half_w] [expr $x_center + $bx/2] [expr $y_center + $height_half_center + $power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center+$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center+$height_half_center+$con_w/2]
	paint m1
	label VPWR FreeSans 50

	### paint VGND
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$power_half_w] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center-$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center-$height_half_center+$con_w/2]
	paint m1
	label VGND FreeSans 50

	# bulk
	box -610 -470 610 385 
	paint pwell
	box -124 -30 124 30
	paint psubstratepcontact
	box -154 -45 154 45
	paint psubstratepdiff
	box -154 -445 154 45
	paint locali
}

# w = 2.85    l = 7.88 x 2   10.75 x 2
proc place_res_2 {x_center y_center index} {
    set bx 1507
    # set by 
    set height_half_center 440
	set power_half_w 30
	set con_sep 100 ;#unit conversion
	set con_w 30

	# box -394 97.5 394 382.5
    box -537.5 97.5 537.5 382.5
    paint xpolyres

    # box 402.5 105.5 601 374.5
	box 546 105.5 744.5 374.5
    paint viali
    box 537.5 97.5 753.5 382.5
    paint xpolycontact
    box 537.5 97.5 753.5 382.5
    paint locali
    box 543 99.5 748 380.5
    paint metal1

    box -744.5 105.5 -546 374.5
    paint viali
    box -753.5 97.5 -537.5 382.5
    paint xpolycontact
    box -753.5 97.5 -537.5 382.5
    paint locali
    box -748 99.5 -543 380.5
    paint metal1
    box -693.5 210 -633.5 270
	# box -550 210 -490 270
    label Rin FreeSans 30

    box -537.5 -382.5 537.5 -97.5
    paint xpolyres

    box 546 -374.5 744.5 -105.5
    paint viali
    box 537.5 -382.5 753.5 -97.5
    paint xpolycontact
    box 537.5 -382.5 753.5 -97.5
    paint locali
    box 543 -380.5 748 -99.5
    paint metal1

    box -744.5 -374.5 -546 -105.5
    paint viali
    box -753.5 -382.5 -537.5 -97.5
    paint xpolycontact
    box -753.5 -382.5 -537.5 -97.5
    paint locali
    box -748 -380.5 -543 -99.5
    paint metal1
    box -693.5 -270 -633.5 -210
    label Rout FreeSans 30

    box 537.5 -382.5 753.5 99.5
    paint m1
    paint locali

	### paint VPWR
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center - $power_half_w] [expr $x_center + $bx/2] [expr $y_center + $height_half_center + $power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center+$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center+$height_half_center+$con_w/2]
	paint m1
	label VPWR FreeSans 50

	### paint VGND
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$power_half_w] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center-$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center-$height_half_center+$con_w/2]
	paint m1
	label VGND FreeSans 50

	# bulk
	box -610 -470 610 385 
	paint pwell
	box -124 -30 124 30
	paint psubstratepcontact
	box -154 -45 154 45
	paint psubstratepdiff
	box -154 -445 154 45
	paint locali
}

proc place_pnp_0 {x_center y_center index} {

	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__pnp_05v5_W3p40L3p40 [format "xm%d" $index] 
    set box_size [shift_to_center]
	set bx [expr {[lindex $box_size 0]/2}]
    set height_half_center 440
	set power_half_w 30
	set con_sep 100 ;#unit conversion
	set con_w 30

    # Todo: check patint li
	### label Collector
	box 70 292 130 312
	paint li
	label Collector FreeSans 30
	### label Base
	box 52 216 112 236
	paint li
	label Base FreeSans 30
	### label Emitter
	box -54 35 60 100
	paint li
	label Emitter FreeSans 30

	### paint VPWR
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center - $power_half_w] [expr $x_center + $bx/2] [expr $y_center + $height_half_center + $power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center+$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center+$height_half_center+$con_w/2]
	paint m1
	label VPWR FreeSans 50

	### paint VGND
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$power_half_w] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center-$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center-$height_half_center+$con_w/2]
	paint m1
	label VGND FreeSans 50

	puts $bx/2
}


proc place_pnp {x_center y_center mult index} {

	box [expr $x_center]um [expr $y_center]um [expr $x_center]um [expr $y_center]um  
	magic::gencell sky130::sky130_fd_pr__pnp_05v5_W3p40L3p40 [format "xm%d" $index] 
	
	for {set i 1} {$i <= $mult-1} {set i [expr $i + 1]} {
		copy to [expr 670*$i] 0
	}

	box 643 13 684 657
	paint locali
	paint psubstratepdiff

	# Conncet Collector
	for {set j 1} {$j <= $mult-2} {set j [expr $j + 1]} {
		copy to [expr 643+670*$j] 13
		paint locali
		paint psubstratepdiff
	}

	box 0 0 [expr 670*$mult] 670
    set box_size [shift_to_center]
	set bx [expr {[lindex $box_size 0]/2}]
	set x_center [expr 670*$mult/2]
	set y_center 335
    set height_half_center 440
	set power_half_w 30
	set con_sep 100 ;#unit conversion
	set con_w 30

	# Connect Emitter
	box 182 182 [expr 647.25*$mult] 488
	paint metal1
	# Connect Base and Collector
	box 13 570 [expr 668.375*$mult] 657
	paint locali
	box 13 13 [expr 668.375*$mult] 100
	paint locali

    # Todo: check patint li
	### label Collector
	box 2415 627 2475 647
	paint li
	label Collector FreeSans 30
	### label Base
	box 2397 551 2457 571
	paint li
	label Base FreeSans 30
	## label Emitter
	box 2291 370 2405 435
	paint li
	label Emitter FreeSans 30

	### paint VPWR
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center - $power_half_w] [expr $x_center + $bx/2] [expr $y_center + $height_half_center + $power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center + $height_half_center + $con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center+$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center+$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center+$height_half_center+$con_w/2]
	paint m1
	label VPWR FreeSans 50

	### paint VGND
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$power_half_w] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$power_half_w]
	paint m1
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center+$bx/2] [expr $y_center-$height_half_center+$con_w/2]
	paint li
	for {set x 100} {$x+$con_w<=$bx} {set x [expr $x + $con_sep]} {
		box [expr $x_center-$bx/2+$x-$con_w/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$x+$con_w/2]  [expr $y_center-$height_half_center+$con_w/2]
		paint viali
	}
	box [expr $x_center-$bx/2] [expr $y_center-$height_half_center-$con_w/2] [expr $x_center-$bx/2+$con_w] [expr $y_center-$height_half_center+$con_w/2]
	paint m1
	label VGND FreeSans 50

	puts $bx/2
}


######################## Instance Placement Illustration #####################
#	inst_name guard topc botc lmin wmin viagate
#	inst_name x_center y_center width length nf index params
##############################################################################

### some simple test ###
# load first_try
### PFET PLACEMENT ###
# set params [inst_param_customize "sky130_fd_pr__pfet_01v8_lvt" 0 0 1 0 0.35 0.42 50]  
# place_inst "sky130_fd_pr__pfet_01v8_lvt" 0 10 12.9 2 14 1 $params
# ### NFET PLACEMENT ###
# set params [inst_param_customize "sky130_fd_pr__nfet_01v8_lvt" 0 0 1 0 0.15 0.42 50]  
# place_inst "sky130_fd_pr__nfet_01v8_lvt" 0 -10 9 2 1 2 $params

# place_sky130_fd_pr__res_xhigh_po_2p85 0 0 2.850 31.52 17 22.132k 1