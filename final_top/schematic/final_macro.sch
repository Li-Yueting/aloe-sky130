v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4680 2760 4950 2760 { lab=VSS}
N 4680 2740 4950 2740 { lab=VDD}
N 4520 2870 4580 2870 { lab=VDD}
N 4540 2890 4580 2890 { lab=VSS}
N 4490 2760 4680 2760 { lab=VSS}
N 4490 2740 4680 2740 { lab=VDD}
N 4580 2740 4580 2870 { lab=VDD}
N 4560 2760 4560 2890 { lab=VSS}
N 4460 2870 4520 2870 { lab=VDD}
N 4460 2870 4460 2950 { lab=VDD}
N 4460 2950 4520 2950 { lab=VDD}
N 4480 2970 4540 2970 { lab=VSS}
N 4480 2890 4480 2970 { lab=VSS}
N 4480 2890 4540 2890 { lab=VSS}
N 4540 2970 5260 2970 { lab=VSS}
N 4520 2950 5260 2950 { lab=VDD}
N 5250 2740 5250 2910 { lab=#net1}
N 5250 2910 5260 2910 { lab=#net1}
N 5140 2870 5260 2870 { lab=switch_en_vbgr}
N 5140 2890 5260 2890 { lab=switch_en_b_vbgr}
N 5230 2930 5260 2930 { lab=in[31:0]}
N 5060 3080 5060 3110 { lab=GND}
C {bgr_0.sym} 4730 2890 0 0 {name=x2}
C {devices/ipin.sym} 4500 2740 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 4500 2760 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 4650 3080 0 0 {name=p3 lab=porst[31:0]}
C {devices/lab_pin.sym} 4580 2910 0 0 {name=l1 sig_type=std_logic lab=porst[0]}
C {devices/ipin.sym} 4650 3050 0 0 {name=p4 lab=s_vbgr[4:0]}
C {devices/lab_pin.sym} 4950 2780 0 0 {name=l2 sig_type=std_logic lab=s_vbgr[4:0]}
C {devices/ipin.sym} 4650 3020 0 0 {name=p5 lab=decoder_en_vbgr
}
C {devices/lab_pin.sym} 4950 2800 0 0 {name=l3 sig_type=std_logic lab=deocoder_en_vbgr
}
C {devices/ipin.sym} 4650 3110 0 0 {name=p6 lab=switch_en_vbgr}
C {xschem_sky130/sky130_stdcells/inv_1.sym} 4780 2650 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {decoder5x32.sym} 5100 2770 0 0 {name=x1}
C {/scratch/users/xingyuni/temp_yt/aloe-sky130/analog_mux/schematic/line_switches.sym} 5410 2920 0 0 {name=x3}
C {devices/lab_pin.sym} 4740 2650 0 0 {name=l4 sig_type=std_logic lab=switch_en_vbgr
}
C {devices/lab_pin.sym} 4820 2650 2 0 {name=l5 sig_type=std_logic lab=switch_en_b_vbgr
}
C {devices/lab_pin.sym} 5140 2870 0 0 {name=l6 sig_type=std_logic lab=switch_en_vbgr
}
C {devices/lab_pin.sym} 5140 2890 0 0 {name=l7 sig_type=std_logic lab=switch_en_b_vbgr
}
C {devices/opin.sym} 4630 3140 0 0 {name=p7 lab=out}
C {devices/lab_pin.sym} 4880 2870 2 0 {name=l8 sig_type=std_logic lab=in[0]}
C {devices/lab_pin.sym} 5230 2930 0 0 {name=l9 sig_type=std_logic lab=in[31:0]}
C {devices/lab_pin.sym} 5060 3080 2 0 {name=l10 sig_type=std_logic lab=in[31:1]}
C {devices/gnd.sym} 5060 3110 0 0 {name=l11 lab=GND}
C {devices/lab_pin.sym} 5560 2870 2 0 {name=l12 sig_type=std_logic lab=out}
