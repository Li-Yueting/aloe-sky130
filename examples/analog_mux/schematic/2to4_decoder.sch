v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 720 -840 800 -840 { lab=s1}
N 760 -780 800 -780 { lab=s0}
N 720 -900 720 -840 { lab=s1}
N 720 -840 720 -340 { lab=s1}
N 760 -900 760 -780 { lab=s0}
N 760 -780 760 -340 { lab=s0}
N 880 -840 900 -840 { lab=s1_b}
N 720 -940 720 -900 { lab=s1}
N 760 -940 760 -900 { lab=s0}
N 720 -920 900 -920 { lab=s1}
N 900 -920 920 -920 { lab=s1}
N 760 -900 940 -900 { lab=s0}
N 900 -840 960 -840 { lab=s1_b}
N 920 -940 920 -920 { lab=s1}
N 920 -920 920 -340 { lab=s1}
N 940 -940 940 -340 { lab=s0}
N 960 -940 960 -340 { lab=s1_b}
N 980 -940 980 -340 { lab=s0_b}
N 980 -720 1020 -720 { lab=s0_b}
N 960 -680 1020 -680 { lab=s1_b}
N 960 -640 1020 -640 { lab=s1_b}
N 940 -600 1020 -600 { lab=s0}
N 920 -560 1020 -560 { lab=s1}
N 980 -520 1020 -520 { lab=s0_b}
N 920 -480 1020 -480 { lab=s1}
N 940 -440 1020 -440 { lab=s0}
N 880 -780 980 -780 { lab=s0_b}
N 720 -980 720 -940 { lab=s1}
N 760 -980 760 -940 { lab=s0}
N 1140 -460 1180 -460 { lab=en3_b}
N 1140 -540 1180 -540 { lab=en2_b}
N 1140 -620 1180 -620 { lab=en1_b}
N 1140 -700 1180 -700 { lab=en0_b}
C {sky130_stdcells/inv_1.sym} 840 -840 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 840 -780 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 920 -940 1 0 {name=l3 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 940 -940 1 0 {name=l4 sig_type=std_logic lab=s0}
C {devices/lab_pin.sym} 960 -940 1 0 {name=l5 sig_type=std_logic lab=s1_b
}
C {devices/lab_pin.sym} 980 -940 1 0 {name=l6 sig_type=std_logic lab=s0_b
}
C {sky130_stdcells/and2_1.sym} 1080 -700 0 0 {name=x7 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 1080 -620 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 1080 -540 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/and2_1.sym} 1080 -460 0 0 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} 760 -970 1 0 {name=p1 lab=s0
}
C {devices/opin.sym} 1170 -700 0 0 {name=p2 lab=en0_b
}
C {devices/ipin.sym} 720 -970 1 0 {name=p3 lab=s1
}
C {devices/opin.sym} 1170 -620 0 0 {name=p4 lab=en1_b
}
C {devices/opin.sym} 1170 -540 0 0 {name=p5 lab=en2_b
}
C {devices/opin.sym} 1170 -460 0 0 {name=p6 lab=en3_b

}
