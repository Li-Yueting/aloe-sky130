v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 3770 20 3860 20 { lab=vssd1}
N 3890 -460 3960 -460 { lab=vccd1}
N 3560 -330 3680 -330 { lab=gpio_analog[0]}
N 4080 -120 4080 -110 { lab=gpio_analog[3]}
N 4040 -60 4040 -30 { lab=vssd1}
N 4080 -30 4080 -10 { lab=vssd1}
N 3860 -10 4080 -10 { lab=vssd1}
N 4080 -110 4080 -90 { lab=gpio_analog[3]}
N 4080 -180 4080 -150 { lab=#net1}
N 4080 -60 4080 -30 { lab=vssd1}
N 4040 -180 4040 -150 { lab=#net1}
N 4040 -180 4080 -180 { lab=#net1}
N 3600 -350 3600 -330 { lab=gpio_analog[0]}
N 3600 -330 3600 -320 { lab=gpio_analog[0]}
N 3640 -290 3640 -260 { lab=vssd1}
N 3600 -260 3640 -260 { lab=vssd1}
N 3600 -290 3600 -260 { lab=vssd1}
N 3600 -410 3600 -380 { lab=vccd1}
N 3600 -410 3640 -410 { lab=vccd1}
N 3640 -410 3640 -380 { lab=vccd1}
N 3640 -410 3890 -410 { lab=vccd1}
N 3600 -260 3600 -220 { lab=vssd1}
N 3680 -410 3680 -350 { lab=vccd1}
N 3890 -460 3890 -410 { lab=vccd1}
N 3680 -310 3680 -220 { lab=vssd1}
N 3600 -10 3860 -10 { lab=vssd1}
N 3600 -20 3600 -10 { lab=vssd1}
N 3680 -20 3680 -10 { lab=vssd1}
N 3860 -10 3860 20 { lab=vssd1}
N 4040 -30 4080 -30 { lab=vssd1}
N 3980 -310 3980 -110 { lab=gpio_analog[3]}
N 3980 -110 4130 -110 { lab=gpio_analog[3]}
N 3600 -220 3600 -20 { lab=vssd1}
N 3680 -220 3680 -20 { lab=vssd1}
N 4360 -120 4360 -110 { lab=#net2}
N 4320 -60 4320 -30 { lab=#net3}
N 4360 -30 4360 -10 { lab=#net3}
N 4360 -110 4360 -90 { lab=#net2}
N 4360 -180 4360 -150 { lab=#net4}
N 4360 -60 4360 -30 { lab=#net3}
N 4320 -180 4320 -150 { lab=#net4}
N 4320 -180 4360 -180 { lab=#net4}
N 4320 -30 4360 -30 { lab=#net3}
N 4660 -120 4660 -110 { lab=#net5}
N 4620 -60 4620 -30 { lab=#net6}
N 4660 -30 4660 -10 { lab=#net6}
N 4660 -110 4660 -90 { lab=#net5}
N 4660 -180 4660 -150 { lab=#net7}
N 4660 -60 4660 -30 { lab=#net6}
N 4620 -180 4620 -150 { lab=#net7}
N 4620 -180 4660 -180 { lab=#net7}
N 4620 -30 4660 -30 { lab=#net6}
N 4290 -110 4410 -110 {}
N 3980 -330 4290 -330 {}
N 4290 -330 4290 -110 {}
N 4080 -10 4660 -10 {}
N 4580 -110 4710 -110 {}
N 3980 -350 4580 -350 {}
N 4580 -350 4580 -110 {}
C {devices/iopin.sym} 3240 -470 0 0 {name=p1 lab=vdda1}
C {devices/iopin.sym} 3240 -440 0 0 {name=p2 lab=vdda2}
C {devices/iopin.sym} 3240 -410 0 0 {name=p3 lab=vssa1}
C {devices/iopin.sym} 3240 -380 0 0 {name=p4 lab=vssa2}
C {devices/iopin.sym} 3240 -350 0 0 {name=p5 lab=vccd1}
C {devices/iopin.sym} 3240 -320 0 0 {name=p6 lab=vccd2}
C {devices/iopin.sym} 3240 -290 0 0 {name=p7 lab=vssd1}
C {devices/iopin.sym} 3240 -260 0 0 {name=p8 lab=vssd2}
C {devices/ipin.sym} 3290 -190 0 0 {name=p9 lab=wb_clk_i}
C {devices/ipin.sym} 3290 -160 0 0 {name=p10 lab=wb_rst_i}
C {devices/ipin.sym} 3290 -130 0 0 {name=p11 lab=wbs_stb_i}
C {devices/ipin.sym} 3290 -100 0 0 {name=p12 lab=wbs_cyc_i}
C {devices/ipin.sym} 3290 -70 0 0 {name=p13 lab=wbs_we_i}
C {devices/ipin.sym} 3290 -40 0 0 {name=p14 lab=wbs_sel_i[3:0]}
C {devices/ipin.sym} 3290 -10 0 0 {name=p15 lab=wbs_dat_i[31:0]}
C {devices/ipin.sym} 3290 20 0 0 {name=p16 lab=wbs_adr_i[31:0]}
C {devices/opin.sym} 3280 80 0 0 {name=p17 lab=wbs_ack_o}
C {devices/opin.sym} 3280 110 0 0 {name=p18 lab=wbs_dat_o[31:0]}
C {devices/ipin.sym} 3290 150 0 0 {name=p19 lab=la_data_in[127:0]}
C {devices/opin.sym} 3280 180 0 0 {name=p20 lab=la_data_out[127:0]}
C {devices/ipin.sym} 3290 260 0 0 {name=p21 lab=io_in[26:0]}
C {devices/ipin.sym} 3290 290 0 0 {name=p22 lab=io_in_3v3[26:0]}
C {devices/ipin.sym} 3280 570 0 0 {name=p23 lab=user_clock2}
C {devices/opin.sym} 3280 320 0 0 {name=p24 lab=io_out[26:0]}
C {devices/opin.sym} 3280 350 0 0 {name=p25 lab=io_oeb[26:0]}
C {devices/iopin.sym} 3250 410 0 0 {name=p26 lab=gpio_analog[17:0]}
C {devices/iopin.sym} 3250 440 0 0 {name=p27 lab=gpio_noesd[17:0]}
C {devices/iopin.sym} 3250 470 0 0 {name=p29 lab=io_analog[10:0]}
C {devices/iopin.sym} 3250 500 0 0 {name=p30 lab=io_clamp_high[2:0]}
C {devices/iopin.sym} 3250 530 0 0 {name=p31 lab=io_clamp_low[2:0]}
C {devices/opin.sym} 3270 600 0 0 {name=p32 lab=user_irq[2:0]}
C {devices/ipin.sym} 3290 210 0 0 {name=p28 lab=la_oenb[127:0]}
C {devices/lab_pin.sym} 3770 20 0 0 {name=l2 sig_type=std_logic lab=vssd1}
C {devices/lab_pin.sym} 3960 -460 0 1 {name=l3 sig_type=std_logic lab=vccd1}
C {devices/lab_pin.sym} 4130 -110 0 1 {name=l8 sig_type=std_logic lab=gpio_analog[3]}
C {devices/lab_pin.sym} 3560 -330 0 0 {name=l9 sig_type=std_logic lab=gpio_analog[0]}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4060 -60 0 0 {name=M1
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 4060 -150 0 0 {name=M2
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 3620 -290 0 1 {name=M3
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 3620 -380 0 1 {name=M4
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/users/xingyuni/ee372/aloe-sky130/schematic/tsmc_bandgap_real_lvs.sym} 3830 -330 0 0 {name=x1}
C {devices/lab_pin.sym} 4410 -110 0 1 {name=l1 sig_type=std_logic lab=gpio_analog[2]}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4340 -60 0 0 {name=M5
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 4340 -150 0 0 {name=M6
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/lab_pin.sym} 4710 -110 0 1 {name=l4 sig_type=std_logic lab=gpio_analog[1]}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 4640 -60 0 0 {name=M7
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 4640 -150 0 0 {name=M8
L=1
W=5
nf=1
mult=20
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
