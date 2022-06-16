v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 4680 2760 4950 2760 { lab=VSS}
N 4680 2740 4950 2740 { lab=VDD}
N 4520 2870 4580 2870 { lab=VDD}
N 4520 2950 4950 2950 { lab=VDD}
N 4540 2970 4950 2970 { lab=VSS}
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
C {/scratch/users/lyt1314/aloe-sky130/analog_mux/schematic/line_switches.sym} 5100 2920 0 0 {name=x1}
C {bgr_0.sym} 4730 2890 0 0 {name=x2}
C {/scratch/users/lyt1314/aloe-sky130/final_top/schematic/decoder5x32.sym} 5100 2770 0 0 {name=x3}
C {devices/ipin.sym} 4500 2740 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} 4500 2760 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 4510 2670 0 0 {name=p3 lab=porst[31:0]}
C {devices/lab_pin.sym} 4580 2910 0 0 {name=l1 sig_type=std_logic lab=porst[0]}
C {devices/ipin.sym} 4510 2640 0 0 {name=p4 lab=s_vbgr[4:0]}
C {devices/lab_pin.sym} 4950 2780 0 0 {name=l2 sig_type=std_logic lab=s_vbgr[4:0]}
C {devices/ipin.sym} 4510 2610 0 0 {name=p5 lab=decoder_en_vbgr
}
C {devices/lab_pin.sym} 4950 2800 0 0 {name=l3 sig_type=std_logic lab=deocoder_en_vbgr
}
C {devices/ipin.sym} 4510 2700 0 0 {name=p6 lab=switch_en_vbgr}
C {xschem_sky130/sky130_stdcells/inv_1.sym} 4780 2650 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
