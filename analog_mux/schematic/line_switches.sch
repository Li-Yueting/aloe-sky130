v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 650 2350 780 2350 { lab=#net1}
N 500 2350 550 2350 { lab=in10}
N 650 2550 780 2550 { lab=#net2}
N 500 2550 550 2550 { lab=in11}
N 900 2550 1020 2550 { lab=out}
N 650 2750 780 2750 { lab=#net3}
N 500 2750 550 2750 { lab=in12}
N 900 2750 1020 2750 { lab=out}
N 900 2350 1020 2350 { lab=out}
N 650 2950 780 2950 { lab=#net4}
N 500 2950 550 2950 { lab=in13}
N 650 3150 780 3150 { lab=#net5}
N 500 3150 550 3150 { lab=in14}
N 900 3150 1020 3150 { lab=out}
N 650 3350 780 3350 { lab=#net6}
N 500 3350 550 3350 { lab=in15}
N 900 3350 1020 3350 { lab=out}
N 900 2950 1020 2950 { lab=out}
N 650 3550 780 3550 { lab=#net7}
N 500 3550 550 3550 { lab=in16}
N 900 3550 1020 3550 { lab=out}
N 650 3750 780 3750 { lab=#net8}
N 500 3750 550 3750 { lab=in17}
N 900 3750 1020 3750 { lab=out}
N 650 3950 780 3950 { lab=#net9}
N 500 3950 550 3950 { lab=in18}
N 650 4150 780 4150 { lab=#net10}
N 500 4150 550 4150 { lab=in19}
N 900 4150 1020 4150 { lab=out}
N 900 3950 1020 3950 { lab=out}
N 650 1150 780 1150 { lab=#net11}
N 500 1150 550 1150 { lab=in4}
N 900 1150 1020 1150 { lab=out}
N 650 1350 780 1350 { lab=#net12}
N 500 1350 550 1350 { lab=in5}
N 900 1350 1020 1350 { lab=out}
N 650 1550 780 1550 { lab=#net13}
N 500 1550 550 1550 { lab=in6}
N 900 1550 1020 1550 { lab=out}
N 650 1750 780 1750 { lab=#net14}
N 500 1750 550 1750 { lab=in7}
N 900 1750 1020 1750 { lab=out}
N 650 1950 780 1950 { lab=#net15}
N 500 1950 550 1950 { lab=in8}
N 650 2150 780 2150 { lab=#net16}
N 500 2150 550 2150 { lab=in9}
N 900 2150 1020 2150 { lab=out}
N 900 1950 1020 1950 { lab=out}
N 650 550 780 550 { lab=#net17}
N 500 550 550 550 { lab=in1}
N 900 550 1020 550 { lab=out}
N 650 750 780 750 { lab=#net18}
N 500 750 550 750 { lab=in2}
N 900 750 1020 750 { lab=out}
N 650 950 780 950 { lab=#net19}
N 500 950 550 950 { lab=in3}
N 900 950 1020 950 { lab=out}
N 1020 550 1020 950 { lab=out}
N 1020 350 1120 350 { lab=out}
N 650 350 780 350 { lab=#net20}
N 500 350 550 350 { lab=in0}
N 900 350 1020 350 { lab=out}
N 1020 350 1020 550 { lab=out}
N 1020 950 1020 4150 { lab=out}
N 1120 350 1180 350 { lab=out}
N 400 350 500 350 { lab=in0}
N 400 550 500 550 { lab=in1}
N 410 750 500 750 { lab=in2}
N 410 950 500 950 { lab=in3}
N 410 1150 500 1150 { lab=in4}
N 410 1350 500 1350 { lab=in5}
N 410 1550 500 1550 { lab=in6}
N 410 1750 500 1750 { lab=in7}
N 410 1950 500 1950 { lab=in8}
N 410 2150 500 2150 { lab=in9}
N 410 2350 500 2350 { lab=in10}
N 410 2550 500 2550 { lab=in11}
N 410 2750 500 2750 { lab=in12}
N 410 2950 500 2950 { lab=in13}
N 410 3150 500 3150 { lab=in14}
N 410 3350 500 3350 { lab=in15}
N 410 3550 500 3550 { lab=in16}
N 410 3750 500 3750 { lab=in17}
N 410 3950 500 3950 { lab=in18}
N 410 4150 500 4150 { lab=in19}
N 80 280 120 280 {}
N 80 260 120 260 {}
C {transmission_gate.sym} 570 2350 0 0 {name=x28 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 2300 2 1 {name=x29 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 2270 1 0 {name=x30 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 2390 2 0 {name=l46 sig_type=std_logic lab=en10_b
}
C {devices/lab_pin.sym} 840 2230 2 0 {name=l47 sig_type=std_logic lab=en10_b
}
C {devices/lab_pin.sym} 600 2310 0 0 {name=l48 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 2390 0 0 {name=l49 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 2550 0 0 {name=x31 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 2500 2 1 {name=x32 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 2470 1 0 {name=x33 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 2590 2 0 {name=l51 sig_type=std_logic lab=en11_b
}
C {devices/lab_pin.sym} 840 2430 2 0 {name=l52 sig_type=std_logic lab=en11_b
}
C {devices/lab_pin.sym} 600 2510 0 0 {name=l53 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 2590 0 0 {name=l54 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 2750 0 0 {name=x34 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 2700 2 1 {name=x35 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 2670 1 0 {name=x36 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 2790 2 0 {name=l56 sig_type=std_logic lab=en12_b
}
C {devices/lab_pin.sym} 840 2630 2 0 {name=l57 sig_type=std_logic lab=en12_b
}
C {devices/lab_pin.sym} 600 2710 0 0 {name=l58 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 2790 0 0 {name=l59 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 2950 0 0 {name=x37 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 2900 2 1 {name=x38 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 2870 1 0 {name=x39 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 2990 2 0 {name=l61 sig_type=std_logic lab=en13_b
}
C {devices/lab_pin.sym} 840 2830 2 0 {name=l62 sig_type=std_logic lab=en13_b
}
C {devices/lab_pin.sym} 600 2910 0 0 {name=l63 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 2990 0 0 {name=l64 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 3150 0 0 {name=x40 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 3100 2 1 {name=x41 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 3070 1 0 {name=x42 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 3190 2 0 {name=l66 sig_type=std_logic lab=en14_b
}
C {devices/lab_pin.sym} 840 3030 2 0 {name=l67 sig_type=std_logic lab=en14_b
}
C {devices/lab_pin.sym} 600 3110 0 0 {name=l68 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 3190 0 0 {name=l69 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 3350 0 0 {name=x43 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 3300 2 1 {name=x44 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 3270 1 0 {name=x45 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 3390 2 0 {name=l71 sig_type=std_logic lab=en15_b
}
C {devices/lab_pin.sym} 840 3230 2 0 {name=l72 sig_type=std_logic lab=en15_b
}
C {devices/lab_pin.sym} 600 3310 0 0 {name=l73 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 3390 0 0 {name=l74 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 3550 0 0 {name=x46 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 3500 2 1 {name=x47 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 3470 1 0 {name=x48 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 3590 2 0 {name=l76 sig_type=std_logic lab=en16_b
}
C {devices/lab_pin.sym} 840 3430 2 0 {name=l77 sig_type=std_logic lab=en16_b
}
C {devices/lab_pin.sym} 600 3510 0 0 {name=l78 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 3590 0 0 {name=l79 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 3750 0 0 {name=x49 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 3700 2 1 {name=x50 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 3670 1 0 {name=x51 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 3790 2 0 {name=l81 sig_type=std_logic lab=en17_b
}
C {devices/lab_pin.sym} 840 3630 2 0 {name=l82 sig_type=std_logic lab=en17_b
}
C {devices/lab_pin.sym} 600 3710 0 0 {name=l83 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 3790 0 0 {name=l84 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 3950 0 0 {name=x52 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 3900 2 1 {name=x53 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 3870 1 0 {name=x54 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 3990 2 0 {name=l86 sig_type=std_logic lab=en18_b
}
C {devices/lab_pin.sym} 840 3830 2 0 {name=l87 sig_type=std_logic lab=en18_b
}
C {devices/lab_pin.sym} 600 3910 0 0 {name=l88 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 3990 0 0 {name=l89 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 4150 0 0 {name=x55 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 4100 2 1 {name=x56 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 4070 1 0 {name=x57 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 4190 2 0 {name=l91 sig_type=std_logic lab=en19_b
}
C {devices/lab_pin.sym} 840 4030 2 0 {name=l92 sig_type=std_logic lab=en19_b
}
C {devices/lab_pin.sym} 600 4110 0 0 {name=l93 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 4190 0 0 {name=l94 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 1150 0 0 {name=x2 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 1100 2 1 {name=x3 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 1070 1 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 1190 2 0 {name=l1 sig_type=std_logic lab=en4_b
}
C {devices/lab_pin.sym} 840 1030 2 0 {name=l2 sig_type=std_logic lab=en4_b
}
C {devices/lab_pin.sym} 600 1110 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 1190 0 0 {name=l4 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 1350 0 0 {name=x5 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 1300 2 1 {name=x6 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 1270 1 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 1390 2 0 {name=l6 sig_type=std_logic lab=en5_b
}
C {devices/lab_pin.sym} 840 1230 2 0 {name=l7 sig_type=std_logic lab=en5_b
}
C {devices/lab_pin.sym} 600 1310 0 0 {name=l8 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 1390 0 0 {name=l9 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 1550 0 0 {name=x8 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 1500 2 1 {name=x9 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 1470 1 0 {name=x10 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 1590 2 0 {name=l11 sig_type=std_logic lab=en6_b
}
C {devices/lab_pin.sym} 840 1430 2 0 {name=l12 sig_type=std_logic lab=en6_b
}
C {devices/lab_pin.sym} 600 1510 0 0 {name=l13 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 1590 0 0 {name=l14 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 1750 0 0 {name=x11 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 1700 2 1 {name=x12 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 1670 1 0 {name=x13 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 1790 2 0 {name=l16 sig_type=std_logic lab=en7_b
}
C {devices/lab_pin.sym} 840 1630 2 0 {name=l17 sig_type=std_logic lab=en7_b
}
C {devices/lab_pin.sym} 600 1710 0 0 {name=l18 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 1790 0 0 {name=l19 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 1950 0 0 {name=x14 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 1900 2 1 {name=x15 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 1870 1 0 {name=x16 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 1990 2 0 {name=l21 sig_type=std_logic lab=en8_b
}
C {devices/lab_pin.sym} 840 1830 2 0 {name=l22 sig_type=std_logic lab=en8_b
}
C {devices/lab_pin.sym} 600 1910 0 0 {name=l23 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 1990 0 0 {name=l24 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 2150 0 0 {name=x17 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 2100 2 1 {name=x18 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 2070 1 0 {name=x19 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 2190 2 0 {name=l26 sig_type=std_logic lab=en9_b
}
C {devices/lab_pin.sym} 840 2030 2 0 {name=l27 sig_type=std_logic lab=en9_b
}
C {devices/lab_pin.sym} 600 2110 0 0 {name=l28 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 2190 0 0 {name=l29 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 550 0 0 {name=x20 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 500 2 1 {name=x21 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 470 1 0 {name=x22 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 590 2 0 {name=l31 sig_type=std_logic lab=en1_b
}
C {devices/lab_pin.sym} 840 430 2 0 {name=l32 sig_type=std_logic lab=en1_b
}
C {devices/lab_pin.sym} 600 510 0 0 {name=l33 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 590 0 0 {name=l34 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 750 0 0 {name=x23 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 700 2 1 {name=x24 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 670 1 0 {name=x25 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 790 2 0 {name=l36 sig_type=std_logic lab=en2_b
}
C {devices/lab_pin.sym} 840 630 2 0 {name=l37 sig_type=std_logic lab=en2_b
}
C {devices/lab_pin.sym} 600 710 0 0 {name=l38 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 790 0 0 {name=l39 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 950 0 0 {name=x26 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 900 2 1 {name=x27 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 870 1 0 {name=x58 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 990 2 0 {name=l41 sig_type=std_logic lab=en3_b
}
C {devices/lab_pin.sym} 840 830 2 0 {name=l42 sig_type=std_logic lab=en3_b
}
C {devices/lab_pin.sym} 600 910 0 0 {name=l43 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 990 0 0 {name=l44 sig_type=std_logic lab=en
}
C {transmission_gate.sym} 570 350 0 0 {name=x59 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 770 300 2 1 {name=x60 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 840 270 1 0 {name=x61 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 840 390 2 0 {name=l96 sig_type=std_logic lab=en0_b
}
C {devices/lab_pin.sym} 840 230 2 0 {name=l97 sig_type=std_logic lab=en0_b
}
C {devices/lab_pin.sym} 600 310 0 0 {name=l98 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 600 390 0 0 {name=l99 sig_type=std_logic lab=en
}
C {devices/ipin.sym} 420 1350 0 0 {name=p32 lab=in5





}
C {devices/ipin.sym} 420 1550 0 0 {name=p33 lab=in6






}
C {devices/ipin.sym} 420 1750 0 0 {name=p34 lab=in7







}
C {devices/ipin.sym} 420 1950 0 0 {name=p35 lab=in8








}
C {devices/ipin.sym} 420 2150 0 0 {name=p36 lab=in9









}
C {devices/ipin.sym} 420 2350 0 0 {name=p37 lab=in10










}
C {devices/ipin.sym} 420 2550 0 0 {name=p38 lab=in11










}
C {devices/ipin.sym} 420 2750 0 0 {name=p39 lab=in12










}
C {devices/ipin.sym} 420 2950 0 0 {name=p40 lab=in13










}
C {devices/ipin.sym} 420 3150 0 0 {name=p41 lab=in14










}
C {devices/ipin.sym} 420 3350 0 0 {name=p42 lab=in15










}
C {devices/ipin.sym} 420 3550 0 0 {name=p43 lab=in16











}
C {devices/ipin.sym} 420 3750 0 0 {name=p44 lab=in17













}
C {devices/ipin.sym} 420 3950 0 0 {name=p45 lab=in18














}
C {devices/ipin.sym} 420 4150 0 0 {name=p46 lab=in19















}
C {devices/opin.sym} 1170 350 0 0 {name=p21 lab=out}
C {devices/ipin.sym} 410 350 0 0 {name=p27 lab=in0
}
C {devices/ipin.sym} 410 550 0 0 {name=p28 lab=in1

}
C {devices/ipin.sym} 420 750 0 0 {name=p29 lab=in2


}
C {devices/ipin.sym} 420 950 0 0 {name=p30 lab=in3



}
C {devices/ipin.sym} 420 1150 0 0 {name=p31 lab=in4




}
C {devices/ipin.sym} 90 350 0 0 {name=p1 lab=en0_b
}
C {devices/ipin.sym} 90 380 0 0 {name=p2 lab=en1_b

}
C {devices/ipin.sym} 90 410 0 0 {name=p3 lab=en2_b


}
C {devices/ipin.sym} 90 440 0 0 {name=p4 lab=en3_b


}
C {devices/ipin.sym} 90 470 0 0 {name=p5 lab=en4_b


}
C {devices/ipin.sym} 90 500 0 0 {name=p6 lab=en5_b


}
C {devices/ipin.sym} 90 530 0 0 {name=p7 lab=en6_b


}
C {devices/ipin.sym} 90 560 0 0 {name=p8 lab=en7_b


}
C {devices/ipin.sym} 90 590 0 0 {name=p9 lab=en8_b


}
C {devices/ipin.sym} 90 620 0 0 {name=p10 lab=en9_b


}
C {devices/ipin.sym} 90 650 0 0 {name=p11 lab=en10_b


}
C {devices/ipin.sym} 90 680 0 0 {name=p12 lab=en11_b


}
C {devices/ipin.sym} 90 710 0 0 {name=p13 lab=en12_b


}
C {devices/ipin.sym} 90 740 0 0 {name=p14 lab=en13_b


}
C {devices/ipin.sym} 90 770 0 0 {name=p15 lab=en14_b


}
C {devices/ipin.sym} 90 800 0 0 {name=p16 lab=en15_b


}
C {devices/ipin.sym} 90 830 0 0 {name=p17 lab=en16_b


}
C {devices/ipin.sym} 90 860 0 0 {name=p18 lab=en17_b


}
C {devices/ipin.sym} 90 890 0 0 {name=p19 lab=en18_b


}
C {devices/ipin.sym} 90 920 0 0 {name=p20 lab=en19_b


}
C {devices/ipin.sym} 90 950 0 0 {name=p22 lab=en20_b


}
C {devices/ipin.sym} 90 980 0 0 {name=p23 lab=en21_b


}
C {devices/ipin.sym} 90 1010 0 0 {name=p24 lab=en22_b


}
C {devices/ipin.sym} 90 1040 0 0 {name=p25 lab=en23_b


}
C {devices/ipin.sym} 90 1070 0 0 {name=p26 lab=en24_b


}
C {devices/ipin.sym} 90 1100 0 0 {name=p47 lab=en25_b


}
C {devices/ipin.sym} 90 1130 0 0 {name=p48 lab=en26_b


}
C {devices/ipin.sym} 90 1160 0 0 {name=p49 lab=en27_b


}
C {devices/ipin.sym} 90 1190 0 0 {name=p50 lab=en28_b


}
C {devices/ipin.sym} 90 1220 0 0 {name=p51 lab=en29_b


}
C {devices/ipin.sym} 90 1250 0 0 {name=p52 lab=en30_b


}
C {devices/ipin.sym} 90 1280 0 0 {name=p53 lab=en31_b


}
C {devices/ipin.sym} 90 280 0 0 {name=p54 lab=en_b

}
C {devices/ipin.sym} 90 260 0 0 {name=p55 lab=en


}
C {devices/lab_pin.sym} 120 280 2 0 {name=l5 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 120 260 2 0 {name=l10 sig_type=std_logic lab=en
}
