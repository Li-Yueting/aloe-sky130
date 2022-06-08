v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 5850 300 5950 300 { lab=out}
N 5480 300 5610 300 { lab=#net1}
N 5330 300 5380 300 { lab=in0}
N 5730 300 5850 300 { lab=out}
N 5950 300 6010 300 { lab=out}
N 5230 300 5330 300 { lab=in0}
N 5010 290 5050 290 { lab=en_b}
N 5010 270 5050 270 { lab=en}
N 5860 550 5960 550 { lab=out}
N 5490 550 5620 550 { lab=#net2}
N 5340 550 5390 550 { lab=in1}
N 5740 550 5860 550 { lab=out}
N 5240 550 5340 550 { lab=in1}
N 5960 300 5960 550 { lab=out}
N 5860 790 5960 790 { lab=out}
N 5490 790 5620 790 { lab=#net3}
N 5340 790 5390 790 { lab=in2}
N 5740 790 5860 790 { lab=out}
N 5240 790 5340 790 { lab=in2}
N 5500 1040 5630 1040 { lab=#net4}
N 5350 1040 5400 1040 { lab=in3}
N 5750 1040 5870 1040 { lab=out}
N 5250 1040 5350 1040 { lab=in3}
N 5960 550 5960 1040 { lab=out}
N 5870 1040 5960 1040 { lab=out}
C {transmission_gate.sym} 5400 300 0 0 {name=x59 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 5600 250 2 1 {name=x60 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 5670 220 1 0 {name=x61 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 5670 340 2 0 {name=l96 sig_type=std_logic lab=en0_b
}
C {devices/lab_pin.sym} 5670 180 2 0 {name=l97 sig_type=std_logic lab=en0_b
}
C {devices/lab_pin.sym} 5430 260 0 0 {name=l98 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 5430 340 0 0 {name=l99 sig_type=std_logic lab=en
}
C {devices/opin.sym} 6000 300 0 0 {name=p21 lab=out}
C {devices/ipin.sym} 5240 300 0 0 {name=p27 lab=in0
}
C {devices/ipin.sym} 5020 480 0 0 {name=p1 lab=en1_b
}
C {devices/ipin.sym} 5020 290 0 0 {name=p54 lab=en_b

}
C {devices/ipin.sym} 5020 270 0 0 {name=p55 lab=en


}
C {devices/lab_pin.sym} 5050 290 2 0 {name=l5 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 5050 270 2 0 {name=l10 sig_type=std_logic lab=en
}
C {devices/ipin.sym} 5020 390 0 0 {name=p2 lab=VDD
}
C {devices/ipin.sym} 5020 420 0 0 {name=p3 lab=VSS
}
C {transmission_gate.sym} 5410 550 0 0 {name=x1 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 5610 500 2 1 {name=x2 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 5680 470 1 0 {name=x3 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 5680 590 2 0 {name=l1 sig_type=std_logic lab=en1_b
}
C {devices/lab_pin.sym} 5680 430 2 0 {name=l2 sig_type=std_logic lab=en1_b
}
C {devices/lab_pin.sym} 5440 510 0 0 {name=l3 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 5440 590 0 0 {name=l4 sig_type=std_logic lab=en
}
C {devices/ipin.sym} 5250 550 0 0 {name=p5 lab=in1
}
C {devices/ipin.sym} 5020 450 0 0 {name=p4 lab=en0_b
}
C {transmission_gate.sym} 5410 790 0 0 {name=x4 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 5610 740 2 1 {name=x5 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 5680 710 1 0 {name=x6 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 5680 830 2 0 {name=l6 sig_type=std_logic lab=en2_b
}
C {devices/lab_pin.sym} 5680 670 2 0 {name=l7 sig_type=std_logic lab=en2_b
}
C {devices/lab_pin.sym} 5440 750 0 0 {name=l8 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 5440 830 0 0 {name=l9 sig_type=std_logic lab=en
}
C {devices/ipin.sym} 5250 790 0 0 {name=p6 lab=in2

}
C {transmission_gate.sym} 5420 1040 0 0 {name=x7 VDD=VDD VSS=VSS N=1 W_N=5.3 L_N=0.15 W_P=13.7 L_P=0.15}
C {switch_5t.sym} 5620 990 2 1 {name=x8 VDD=VDD VSS=VSS}
C {sky130_stdcells/inv_1.sym} 5690 960 1 0 {name=x9 VGND=VSS VNB=VSS VPB=VDD VPWR=VDD prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 5690 1080 2 0 {name=l11 sig_type=std_logic lab=en3_b
}
C {devices/lab_pin.sym} 5690 920 2 0 {name=l12 sig_type=std_logic lab=en3_b
}
C {devices/lab_pin.sym} 5450 1000 0 0 {name=l13 sig_type=std_logic lab=en_b}
C {devices/lab_pin.sym} 5450 1080 0 0 {name=l14 sig_type=std_logic lab=en
}
C {devices/ipin.sym} 5260 1040 0 0 {name=p7 lab=in3

}
C {devices/ipin.sym} 5020 510 0 0 {name=p8 lab=en2_b
}
C {devices/ipin.sym} 5020 540 0 0 {name=p9 lab=en3_b
}
