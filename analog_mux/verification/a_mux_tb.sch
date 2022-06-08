v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -420 -1410 -420 -1400 { lab=VDD}
N -420 -1280 -420 -1270 { lab=in0}
N -350 -1280 -350 -1270 { lab=in1}
N -280 -1280 -280 -1270 { lab=in2}
N -210 -1280 -210 -1270 { lab=in3}
N 340 -540 400 -540 { lab=VDD}
N 340 -910 340 -540 { lab=VDD}
N 340 -1120 400 -1120 { lab=VDD}
N 340 -1100 400 -1100 { lab=VDD}
N 340 -1080 400 -1080 { lab=VDD}
N 340 -1060 400 -1060 { lab=VDD}
N 340 -1040 400 -1040 { lab=VDD}
N 340 -1020 400 -1020 { lab=VDD}
N 340 -980 400 -980 { lab=VDD}
N 340 -960 400 -960 { lab=VDD}
N 340 -940 400 -940 { lab=VDD}
N 340 -920 400 -920 { lab=VDD}
N 340 -900 400 -900 { lab=VDD}
N 340 -880 400 -880 { lab=VDD}
N 340 -840 400 -840 { lab=VDD}
N 340 -820 400 -820 { lab=VDD}
N 340 -780 400 -780 { lab=VDD}
N 340 -760 400 -760 { lab=VDD}
N 340 -740 400 -740 { lab=VDD}
N 340 -720 400 -720 { lab=VDD}
N 340 -700 400 -700 { lab=VDD}
N 340 -680 400 -680 { lab=VDD}
N 340 -660 400 -660 { lab=VDD}
N 340 -640 400 -640 { lab=VDD}
N 340 -620 400 -620 { lab=VDD}
N 340 -600 400 -600 { lab=VDD}
N 340 -580 400 -580 { lab=VDD}
N 340 -560 400 -560 { lab=VDD}
N 340 -1140 340 -910 { lab=VDD}
N -140 -1280 -140 -1270 { lab=in4}
N -420 -1120 -420 -1110 { lab=in5}
N -350 -1120 -350 -1110 { lab=in6}
N -280 -1120 -280 -1110 { lab=in7}
N -210 -1120 -210 -1110 { lab=in8}
N -140 -1120 -140 -1110 { lab=in9}
N -410 -950 -410 -940 { lab=in10}
N -340 -950 -340 -940 { lab=in11}
N -270 -950 -270 -940 { lab=in12}
N -200 -950 -200 -940 { lab=in13}
N -130 -950 -130 -940 { lab=in14}
N -410 -790 -410 -780 { lab=in15}
N -340 -790 -340 -780 { lab=in16}
N -270 -790 -270 -780 { lab=in17}
N -200 -790 -200 -780 { lab=in18}
N -130 -790 -130 -780 { lab=in19}
N 700 -1060 760 -1060 { lab=out32}
N 760 -1060 760 -1050 { lab=out32}
N 360 -1600 400 -1600 { lab=GND}
N 330 -1620 400 -1620 { lab=VDD}
N 340 -1160 400 -1160 { lab=VDD}
N 340 -1160 340 -1140 { lab=VDD}
N 340 -1140 400 -1140 { lab=VDD}
N 380 -800 400 -800 { lab=VDD}
N 340 -800 380 -800 { lab=VDD}
N 365 -860 400 -860 { lab=VDD}
N 370 -1000 400 -1000 { lab=GND}
N 340 -860 365 -860 { lab=VDD}
C {devices/vsource.sym} -420 -1370 0 0 {name=V2 value="1.8"}
C {devices/gnd.sym} -420 -1340 0 0 {name=l9 lab=GND}
C {devices/vdd.sym} -420 -1410 0 0 {name=l5 lab=VDD}
C {devices/code_shown.sym} 950 -1040 0 0 {name=NGSPICE1 only_toplevel=false value="
.options savecurrents
.control
tran 0.1n 30n
write a_mux_tb.raw
.endc
"}
C {devices/code.sym} 940 -1200 0 0 {name=TT_MODELS1
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.inc /farmshare/home/classes/ee/372/PDKs/open_pdks_1.0.310/sky130/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/vdd.sym} 340 -910 3 0 {name=l8 lab=VDD}
C {devices/vsource.sym} -420 -1240 0 0 {name=V4 value=0.1}
C {devices/gnd.sym} -420 -1210 0 0 {name=l10 lab=GND}
C {devices/lab_wire.sym} -420 -1280 0 0 {name=l11 sig_type=std_logic lab=in0}
C {devices/vsource.sym} -350 -1240 0 0 {name=V5 value=0.2}
C {devices/gnd.sym} -350 -1210 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -350 -1280 0 0 {name=l13 sig_type=std_logic lab=in1}
C {devices/vsource.sym} -280 -1240 0 0 {name=V6 value=0.3}
C {devices/gnd.sym} -280 -1210 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} -280 -1280 0 0 {name=l15 sig_type=std_logic lab=in2}
C {devices/vsource.sym} -210 -1240 0 0 {name=V7 value=0.4}
C {devices/gnd.sym} -210 -1210 0 0 {name=l16 lab=GND}
C {devices/lab_wire.sym} -210 -1280 0 0 {name=l17 sig_type=std_logic lab=in3}
C {devices/lab_wire.sym} 400 -1570 0 0 {name=l18 sig_type=std_logic lab=in0}
C {devices/lab_wire.sym} 400 -1550 0 0 {name=l19 sig_type=std_logic lab=in1}
C {devices/lab_wire.sym} 400 -1530 0 0 {name=l20 sig_type=std_logic lab=in2}
C {devices/lab_wire.sym} 400 -1510 0 0 {name=l21 sig_type=std_logic lab=in3}
C {devices/gnd.sym} 760 -990 0 0 {name=l22 lab=GND}
C {devices/res.sym} 760 -1020 0 0 {name=R2
value=1e9
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 760 -1050 0 1 {name=l29 sig_type=std_logic lab=out32
}
C {line_switches.sym} 550 -1050 0 0 {name=x3}
C {devices/gnd.sym} 370 -1000 1 0 {name=l30 lab=GND}
C {devices/vsource.sym} -140 -1240 0 0 {name=V8 value=0.5}
C {devices/gnd.sym} -140 -1210 0 0 {name=l31 lab=GND}
C {devices/lab_wire.sym} -140 -1280 0 0 {name=l32 sig_type=std_logic lab=in4}
C {devices/vsource.sym} -420 -1080 0 0 {name=V9 value=0.6}
C {devices/gnd.sym} -420 -1050 0 0 {name=l33 lab=GND}
C {devices/lab_wire.sym} -420 -1120 0 0 {name=l34 sig_type=std_logic lab=in5}
C {devices/vsource.sym} -350 -1080 0 0 {name=V10 value=0.7}
C {devices/gnd.sym} -350 -1050 0 0 {name=l35 lab=GND}
C {devices/lab_wire.sym} -350 -1120 0 0 {name=l36 sig_type=std_logic lab=in6}
C {devices/vsource.sym} -280 -1080 0 0 {name=V11 value=0.8}
C {devices/gnd.sym} -280 -1050 0 0 {name=l37 lab=GND}
C {devices/lab_wire.sym} -280 -1120 0 0 {name=l38 sig_type=std_logic lab=in7}
C {devices/vsource.sym} -210 -1080 0 0 {name=V12 value=0.9}
C {devices/gnd.sym} -210 -1050 0 0 {name=l39 lab=GND}
C {devices/lab_wire.sym} -210 -1120 0 0 {name=l40 sig_type=std_logic lab=in8}
C {devices/vsource.sym} -140 -1080 0 0 {name=V13 value=1.0}
C {devices/gnd.sym} -140 -1050 0 0 {name=l41 lab=GND}
C {devices/lab_wire.sym} -140 -1120 0 0 {name=l42 sig_type=std_logic lab=in9}
C {devices/vsource.sym} -410 -910 0 0 {name=V14 value=1.1
}
C {devices/gnd.sym} -410 -880 0 0 {name=l43 lab=GND}
C {devices/lab_wire.sym} -410 -950 0 0 {name=l44 sig_type=std_logic lab=in10}
C {devices/vsource.sym} -340 -910 0 0 {name=V15 value=1.2}
C {devices/gnd.sym} -340 -880 0 0 {name=l45 lab=GND}
C {devices/lab_wire.sym} -340 -950 0 0 {name=l46 sig_type=std_logic lab=in11}
C {devices/vsource.sym} -270 -910 0 0 {name=V16 value=1.3}
C {devices/gnd.sym} -270 -880 0 0 {name=l47 lab=GND}
C {devices/lab_wire.sym} -270 -950 0 0 {name=l48 sig_type=std_logic lab=in12}
C {devices/vsource.sym} -200 -910 0 0 {name=V17 value=1.4}
C {devices/gnd.sym} -200 -880 0 0 {name=l49 lab=GND}
C {devices/lab_wire.sym} -200 -950 0 0 {name=l50 sig_type=std_logic lab=in13
}
C {devices/vsource.sym} -130 -910 0 0 {name=V18 value=1.5}
C {devices/gnd.sym} -130 -880 0 0 {name=l51 lab=GND}
C {devices/lab_wire.sym} -130 -950 0 0 {name=l52 sig_type=std_logic lab=in14}
C {devices/vsource.sym} -410 -750 0 0 {name=V19 value=1.6}
C {devices/gnd.sym} -410 -720 0 0 {name=l53 lab=GND}
C {devices/lab_wire.sym} -410 -790 0 0 {name=l54 sig_type=std_logic lab=in15}
C {devices/vsource.sym} -340 -750 0 0 {name=V20 value=1.7}
C {devices/gnd.sym} -340 -720 0 0 {name=l55 lab=GND}
C {devices/lab_wire.sym} -340 -790 0 0 {name=l56 sig_type=std_logic lab=in16}
C {devices/vsource.sym} -270 -750 0 0 {name=V21 value=1.8}
C {devices/gnd.sym} -270 -720 0 0 {name=l57 lab=GND}
C {devices/lab_wire.sym} -270 -790 0 0 {name=l58 sig_type=std_logic lab=in17}
C {devices/vsource.sym} -200 -750 0 0 {name=V22 value=1.9}
C {devices/gnd.sym} -200 -720 0 0 {name=l59 lab=GND}
C {devices/lab_wire.sym} -200 -790 0 0 {name=l60 sig_type=std_logic lab=in18}
C {devices/vsource.sym} -130 -750 0 0 {name=V23 value=2.0}
C {devices/gnd.sym} -130 -720 0 0 {name=l61 lab=GND}
C {devices/lab_wire.sym} -130 -790 0 0 {name=l62 sig_type=std_logic lab=in19}
C {devices/lab_wire.sym} 400 -1490 0 0 {name=l23 sig_type=std_logic lab=in4}
C {devices/lab_wire.sym} 400 -1470 0 0 {name=l24 sig_type=std_logic lab=in5}
C {devices/lab_wire.sym} 400 -1450 0 0 {name=l25 sig_type=std_logic lab=in6}
C {devices/lab_wire.sym} 400 -1430 0 0 {name=l26 sig_type=std_logic lab=in7}
C {devices/lab_wire.sym} 400 -1410 0 0 {name=l27 sig_type=std_logic lab=in8
}
C {devices/lab_wire.sym} 400 -1390 0 0 {name=l28 sig_type=std_logic lab=in9

}
C {devices/lab_wire.sym} 400 -1370 0 0 {name=l63 sig_type=std_logic lab=in10


}
C {devices/lab_wire.sym} 400 -1350 0 0 {name=l64 sig_type=std_logic lab=in11



}
C {devices/lab_wire.sym} 400 -1330 0 0 {name=l65 sig_type=std_logic lab=in12



}
C {devices/lab_wire.sym} 400 -1310 0 0 {name=l66 sig_type=std_logic lab=in13



}
C {devices/lab_wire.sym} 400 -1290 0 0 {name=l67 sig_type=std_logic lab=in14




}
C {devices/lab_wire.sym} 400 -1270 0 0 {name=l68 sig_type=std_logic lab=in15





}
C {devices/lab_wire.sym} 400 -1250 0 0 {name=l69 sig_type=std_logic lab=in16






}
C {devices/lab_wire.sym} 400 -1230 0 0 {name=l70 sig_type=std_logic lab=in17







}
C {devices/lab_wire.sym} 400 -1210 0 0 {name=l71 sig_type=std_logic lab=in18








}
C {devices/lab_wire.sym} 400 -1190 0 0 {name=l72 sig_type=std_logic lab=in19








}
C {devices/gnd.sym} 360 -1600 1 0 {name=l73 lab=GND}
C {devices/vdd.sym} 330 -1620 3 0 {name=l74 lab=VDD}
