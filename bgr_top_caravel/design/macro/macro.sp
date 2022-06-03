* NGSPICE file created from bgr_top.ext - technology: sky130A

.subckt sky130_asc_res_xhigh_po_2p85_1 Rin Rout VPWR VGND a_2148_115#
X0 Rin a_2148_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=7.88e+06u
X1 Rout a_2148_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=7.88e+06u
C0 Rout a_2148_115# 0.02fF
C1 Rout Rin 0.10fF
C2 Rin a_2148_115# 0.02fF
C3 Rout VPWR 0.02fF
C4 VPWR a_2148_115# 0.14fF
C5 VPWR Rin 0.14fF
C6 VPWR VGND 2.08fF
C7 Rout VGND 1.08fF
C8 Rin VGND 0.72fF
C9 a_2148_115# VGND 2.33fF
.ends

.subckt sky130_asc_pfet_01v8_lvt_60 GATE SOURCE DRAIN VGND VPWR VSUBS
X0 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=5.6115e+13p pd=4.044e+08u as=5.79855e+13p ps=4.1788e+08u w=6.45e+06u l=2e+06u
X1 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X2 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X3 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X4 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X5 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X6 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X7 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X8 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X9 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X10 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X11 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X12 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X13 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X14 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X15 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X16 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X17 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X18 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X19 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X20 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X21 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X22 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X23 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X24 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X25 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X26 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X27 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X28 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X29 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X30 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X31 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X32 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X33 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X34 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X35 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X36 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X37 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X38 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X39 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X40 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X41 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X42 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X43 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X44 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X45 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X46 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X47 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X48 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X49 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X50 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X51 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X52 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X53 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X54 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X55 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X56 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X57 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X58 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X59 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
C0 VPWR SOURCE 15.78fF
C1 SOURCE VGND 0.26fF
C2 VPWR GATE 22.50fF
C3 VPWR DRAIN 1.68fF
C4 GATE SOURCE 0.64fF
C5 DRAIN SOURCE 17.29fF
C6 GATE VGND 10.45fF
C7 DRAIN VGND 4.47fF
C8 DRAIN GATE 19.65fF
C9 VGND VSUBS 18.48fF
C10 SOURCE VSUBS 0.00fF
C11 DRAIN VSUBS 4.11fF
C12 GATE VSUBS 21.69fF
C13 VPWR VSUBS 142.59fF
.ends

.subckt sky130_asc_pnp_05v5_W3p40L3p40_7 Emitter Base Collector VPWR VGND
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X1 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X2 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X3 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X4 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X5 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X6 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
C0 Base VGND 0.82fF
C1 Emitter VPWR 0.80fF
C2 Emitter Base 15.52fF
C3 Emitter VGND 0.80fF
C4 Base VPWR 1.39fF
C5 VGND Collector 7.65fF
C6 VPWR Collector 10.90fF
C7 Emitter Collector 4.47fF
C8 Base Collector 20.49fF
.ends

.subckt sky130_asc_res_xhigh_po_2p85_2 Rin Rout VPWR a_2723_115# VGND
X0 Rout a_2723_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=1.075e+07u
X1 Rin a_2723_115# VGND sky130_fd_pr__res_xhigh_po w=2.85e+06u l=1.075e+07u
C0 VPWR a_2723_115# 0.14fF
C1 VPWR Rout 0.02fF
C2 Rin VPWR 0.14fF
C3 Rin Rout 0.10fF
C4 VPWR VGND 2.54fF
C5 Rout VGND 1.03fF
C6 Rin VGND 0.72fF
C7 a_2723_115# VGND 2.35fF
.ends

.subckt sky130_asc_pfet_01v8_lvt_12 GATE SOURCE DRAIN VGND VPWR VSUBS
X0 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=1.1223e+13p pd=8.088e+07u as=1.30935e+13p ps=9.436e+07u w=6.45e+06u l=2e+06u
X1 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X2 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X3 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X4 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X5 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X6 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X7 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X8 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X9 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X10 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X11 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
C0 SOURCE VGND 0.05fF
C1 GATE VPWR 4.49fF
C2 GATE DRAIN 3.99fF
C3 GATE SOURCE 0.13fF
C4 GATE VGND 2.13fF
C5 DRAIN VPWR 0.38fF
C6 VPWR SOURCE 3.13fF
C7 DRAIN SOURCE 3.37fF
C8 DRAIN VGND 0.92fF
C9 VGND VSUBS 3.84fF
C10 SOURCE VSUBS 0.00fF
C11 DRAIN VSUBS 0.87fF
C12 GATE VSUBS 4.50fF
C13 VPWR VSUBS 29.51fF
.ends

.subckt sky130_asc_nfet_01v8_lvt_9 GATE SOURCE DRAIN VPWR VGND
X0 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=5.8e+12p pd=4.29e+07u as=5.8e+12p ps=4.29e+07u w=4e+06u l=2e+06u
X1 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X2 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X3 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X4 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X5 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X6 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X7 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
X8 DRAIN GATE SOURCE VGND sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=4e+06u l=2e+06u
C0 DRAIN SOURCE 1.58fF
C1 DRAIN VPWR 0.12fF
C2 SOURCE VPWR 1.19fF
C3 DRAIN GATE 1.57fF
C4 GATE SOURCE 0.10fF
C5 GATE VPWR 0.08fF
C6 VPWR VGND 3.71fF
C7 SOURCE VGND 1.73fF
C8 DRAIN VGND 1.18fF
C9 GATE VGND 8.01fF
.ends

.subckt sky130_asc_pfet_01v8_lvt_6 GATE SOURCE DRAIN VGND VPWR VSUBS
X0 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=5.6115e+12p pd=4.044e+07u as=7.482e+12p ps=5.392e+07u w=6.45e+06u l=2e+06u
X1 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X2 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X3 SOURCE GATE DRAIN VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X4 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
X5 DRAIN GATE SOURCE VPWR sky130_fd_pr__pfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=6.45e+06u l=2e+06u
C0 DRAIN GATE 2.03fF
C1 SOURCE VGND 0.03fF
C2 VPWR DRAIN 0.21fF
C3 SOURCE GATE 0.07fF
C4 GATE VGND 1.09fF
C5 VPWR SOURCE 1.56fF
C6 SOURCE DRAIN 1.63fF
C7 DRAIN VGND 0.47fF
C8 VPWR GATE 2.24fF
C9 VGND VSUBS 2.01fF
C10 SOURCE VSUBS 0.00fF
C11 DRAIN VSUBS 0.47fF
C12 GATE VSUBS 2.34fF
C13 VPWR VSUBS 15.37fF
.ends

.subckt sky130_asc_pnp_05v5_W3p40L3p40_1 Emitter Base Collector VPWR VGND
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
C0 Emitter VPWR 0.07fF
C1 Emitter VGND 0.07fF
C2 Emitter Base 1.25fF
C3 Base VPWR 0.08fF
C4 VGND Base 0.08fF
C5 VGND Collector 1.12fF
C6 VPWR Collector 1.42fF
C7 Emitter Collector -0.15fF
C8 Base Collector 2.03fF
.ends

.subckt sky130_asc_cap_mim_m3_1 Cin Cout VPWR VGND VSUBS
X0 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X1 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X2 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X3 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X4 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X5 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X6 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X7 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X8 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X9 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X10 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X11 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X12 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X13 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X14 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X15 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X16 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X17 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X18 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
X19 Cout Cin sky130_fd_pr__cap_mim_m3_1 l=2e+06u w=2e+06u
C0 Cout Cin 24.75fF
C1 Cout VSUBS 2.19fF
C2 Cin VSUBS 6.19fF
C3 VGND VSUBS 6.57fF
C4 VPWR VSUBS 6.57fF
.ends

.subckt sky130_asc_pnp_05v5_W3p40L3p40_8 Emitter Base Collector VPWR VGND
X0 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X1 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X2 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X3 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X4 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X5 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X6 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
X7 Collector Base Emitter sky130_fd_pr__pnp_05v5_W3p40L3p40
C0 VPWR Emitter 0.92fF
C1 Base VGND 0.94fF
C2 Base VPWR 1.60fF
C3 Base Emitter 17.86fF
C4 VGND Emitter 0.92fF
C5 VGND Collector 8.73fF
C6 VPWR Collector 12.45fF
C7 Emitter Collector 5.22fF
C8 Base Collector 23.50fF
.ends

.subckt sky130_asc_nfet_01v8_lvt_1 GATE SOURCE DRAIN VPWR VGND
X0 SOURCE GATE DRAIN VGND sky130_fd_pr__nfet_01v8_lvt ad=1.16e+12p pd=8.58e+06u as=1.16e+12p ps=8.58e+06u w=4e+06u l=2e+06u
C0 GATE SOURCE 0.01fF
C1 GATE DRAIN 0.13fF
C2 VPWR SOURCE 0.15fF
C3 VPWR DRAIN 0.02fF
C4 DRAIN SOURCE 0.14fF
C5 VPWR VGND 0.61fF
C6 SOURCE VGND 0.30fF
C7 DRAIN VGND 0.23fF
C8 GATE VGND 1.22fF
.ends

.subckt bgr_top porst va vb vbg VSS VDD
Xsky130_asc_res_xhigh_po_2p85_1_7 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_6/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_7/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_8 vbg sky130_asc_res_xhigh_po_2p85_1_7/Rin VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_9 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_60_0 sky130_asc_cap_mim_m3_1_4/Cout VDD vbg VSS VDD VSS
+ sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_pfet_01v8_lvt_60_1 sky130_asc_cap_mim_m3_1_4/Cout VDD vb VSS VDD VSS sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_pfet_01v8_lvt_60_2 sky130_asc_cap_mim_m3_1_4/Cout VDD va VSS VDD VSS sky130_asc_pfet_01v8_lvt_60
Xsky130_asc_res_xhigh_po_2p85_1_30 va sky130_asc_res_xhigh_po_2p85_1_29/Rin VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_20 vb sky130_asc_res_xhigh_po_2p85_1_19/Rin VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pnp_05v5_W3p40L3p40_7_0 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_7
Xsky130_asc_res_xhigh_po_2p85_1_21 sky130_asc_res_xhigh_po_2p85_1_21/Rin sky130_asc_res_xhigh_po_2p85_2_1/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_10 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_2_0 sky130_asc_res_xhigh_po_2p85_2_0/Rin VSS VDD sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115#
+ VSS sky130_asc_res_xhigh_po_2p85_2
Xsky130_asc_res_xhigh_po_2p85_1_22 sky130_asc_res_xhigh_po_2p85_1_22/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_11 sky130_asc_res_xhigh_po_2p85_1_11/Rin sky130_asc_res_xhigh_po_2p85_1_10/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_2_1 sky130_asc_res_xhigh_po_2p85_2_1/Rin VSS VDD sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115#
+ VSS sky130_asc_res_xhigh_po_2p85_2
Xsky130_asc_res_xhigh_po_2p85_1_23 sky130_asc_res_xhigh_po_2p85_1_23/Rin sky130_asc_res_xhigh_po_2p85_1_22/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_12 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_24 sky130_asc_res_xhigh_po_2p85_1_24/Rin sky130_asc_res_xhigh_po_2p85_1_23/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_13 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_12/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_12_0 VDD VDD va VSS VDD VSS sky130_asc_pfet_01v8_lvt_12
Xsky130_asc_res_xhigh_po_2p85_1_14 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_25 sky130_asc_res_xhigh_po_2p85_1_25/Rin sky130_asc_res_xhigh_po_2p85_1_24/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_12_1 sky130_asc_cap_mim_m3_1_4/Cout VDD sky130_asc_nfet_01v8_lvt_1_1/GATE
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_12
Xsky130_asc_res_xhigh_po_2p85_1_26 sky130_asc_res_xhigh_po_2p85_1_26/Rin sky130_asc_res_xhigh_po_2p85_1_25/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_15 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_14/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_27 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_26/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_16 sky130_asc_res_xhigh_po_2p85_1_18/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_28 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_27/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_17 sky130_asc_res_xhigh_po_2p85_1_17/Rin vb VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_nfet_01v8_lvt_9_0 porst VSS sky130_asc_cap_mim_m3_1_4/Cout VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_res_xhigh_po_2p85_1_29 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_res_xhigh_po_2p85_1_28/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pfet_01v8_lvt_6_0 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD sky130_asc_cap_mim_m3_1_4/Cout
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_6
Xsky130_asc_res_xhigh_po_2p85_1_18 sky130_asc_res_xhigh_po_2p85_1_18/Rin sky130_asc_res_xhigh_po_2p85_1_17/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_nfet_01v8_lvt_9_1 va sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_cap_mim_m3_1_4/Cout
+ VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_pfet_01v8_lvt_6_1 sky130_asc_pfet_01v8_lvt_6_1/GATE VDD sky130_asc_pfet_01v8_lvt_6_1/GATE
+ VSS VDD VSS sky130_asc_pfet_01v8_lvt_6
Xsky130_asc_res_xhigh_po_2p85_1_19 sky130_asc_res_xhigh_po_2p85_1_19/Rin sky130_asc_res_xhigh_po_2p85_1_19/Rout
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_pnp_05v5_W3p40L3p40_1_0 va VSS VSS VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_1
Xsky130_asc_nfet_01v8_lvt_9_2 vb sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pfet_01v8_lvt_6_1/GATE
+ VDD VSS sky130_asc_nfet_01v8_lvt_9
Xsky130_asc_cap_mim_m3_1_0 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_cap_mim_m3_1_1 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_0 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_2 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_cap_mim_m3_1_3 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_1 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_4 VDD sky130_asc_cap_mim_m3_1_4/Cout VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_pnp_05v5_W3p40L3p40_8_2 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_pnp_05v5_W3p40L3p40_8_3 sky130_asc_res_xhigh_po_2p85_1_19/Rout VSS VSS
+ VDD VSS sky130_asc_pnp_05v5_W3p40L3p40_8
Xsky130_asc_cap_mim_m3_1_5 va VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_nfet_01v8_lvt_1_0 sky130_asc_nfet_01v8_lvt_1_1/GATE VSS sky130_asc_nfet_01v8_lvt_1_1/GATE
+ VDD VSS sky130_asc_nfet_01v8_lvt_1
Xsky130_asc_cap_mim_m3_1_6 va VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_0 sky130_asc_res_xhigh_po_2p85_1_0/Rin VSS VDD VSS
+ sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_1 sky130_asc_res_xhigh_po_2p85_1_1/Rin sky130_asc_res_xhigh_po_2p85_1_0/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_7 va VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_nfet_01v8_lvt_1_1 sky130_asc_nfet_01v8_lvt_1_1/GATE VSS sky130_asc_nfet_01v8_lvt_1_1/DRAIN
+ VDD VSS sky130_asc_nfet_01v8_lvt_1
Xsky130_asc_cap_mim_m3_1_8 va VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_2 sky130_asc_res_xhigh_po_2p85_1_2/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_3 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_cap_mim_m3_1_9 va VSS VDD VSS VSS sky130_asc_cap_mim_m3_1
Xsky130_asc_res_xhigh_po_2p85_1_4 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_5 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
Xsky130_asc_res_xhigh_po_2p85_1_6 sky130_asc_res_xhigh_po_2p85_1_6/Rin sky130_asc_res_xhigh_po_2p85_1_5/Rin
+ VDD VSS sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# sky130_asc_res_xhigh_po_2p85_1
C0 VDD sky130_asc_res_xhigh_po_2p85_2_1/Rin 0.60fF
C1 VDD sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.11fF
C2 sky130_asc_res_xhigh_po_2p85_1_1/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.02fF
C3 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.03fF
C4 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.02fF
C5 VSS sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# 0.08fF
C6 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.38fF
C7 VDD sky130_asc_res_xhigh_po_2p85_1_29/Rin 1.23fF
C8 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.01fF
C9 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_pfet_01v8_lvt_6_1/GATE -0.18fF
C10 VDD sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.06fF
C11 sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.19fF
C12 va sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.01fF
C13 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.39fF
C14 va sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.27fF
C15 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.84fF
C16 VSS sky130_asc_res_xhigh_po_2p85_1_22/Rin 0.43fF
C17 VDD sky130_asc_pfet_01v8_lvt_6_1/GATE 1.17fF
C18 sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_18/Rin 0.23fF
C19 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.19fF
C20 sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.20fF
C21 va sky130_asc_cap_mim_m3_1_4/Cout 0.60fF
C22 sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.18fF
C23 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0.51fF
C24 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_nfet_01v8_lvt_1_1/GATE 0.05fF
C25 sky130_asc_res_xhigh_po_2p85_1_5/Rin VSS 0.53fF
C26 sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.04fF
C27 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_res_xhigh_po_2p85_1_28/Rin 0.44fF
C28 VDD sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.54fF
C29 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# VSS 0.02fF
C30 VDD sky130_asc_nfet_01v8_lvt_1_1/DRAIN 3.89fF
C31 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.79fF
C32 VSS sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.10fF
C33 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_18/Rin 0.17fF
C34 VSS sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.43fF
C35 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# sky130_asc_nfet_01v8_lvt_1_1/GATE 0.12fF
C36 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.03fF
C37 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# vb 0.02fF
C38 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# 0.06fF
C39 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# 0.17fF
C40 VSS sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.08fF
C41 VDD sky130_asc_res_xhigh_po_2p85_1_21/Rin 1.22fF
C42 VDD sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.95fF
C43 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0.00fF
C44 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.00fF
C45 VSS sky130_asc_res_xhigh_po_2p85_1_19/Rout 3.11fF
C46 sky130_asc_res_xhigh_po_2p85_1_23/Rin sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.03fF
C47 VSS sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.01fF
C48 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0.50fF
C49 VSS sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.23fF
C50 VDD sky130_asc_res_xhigh_po_2p85_1_12/Rin 0.80fF
C51 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_res_xhigh_po_2p85_1_28/Rin 0.04fF
C52 VSS sky130_asc_nfet_01v8_lvt_1_1/GATE 1.75fF
C53 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.27fF
C54 VSS sky130_asc_res_xhigh_po_2p85_2_1/Rin 0.08fF
C55 VSS vb 12.70fF
C56 sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.14fF
C57 VSS sky130_asc_res_xhigh_po_2p85_1_7/Rin 4.35fF
C58 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.19fF
C59 VSS sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0.02fF
C60 VDD sky130_asc_res_xhigh_po_2p85_1_28/Rin 0.51fF
C61 VSS sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0.02fF
C62 VSS sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.59fF
C63 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.06fF
C64 VSS sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.06fF
C65 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0.26fF
C66 VDD porst 1.11fF
C67 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# 0.08fF
C68 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# 0.03fF
C69 va sky130_asc_res_xhigh_po_2p85_1_19/Rout 0.08fF
C70 VSS sky130_asc_pfet_01v8_lvt_6_1/GATE 0.63fF
C71 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0.17fF
C72 VSS sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# 0.02fF
C73 VDD sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# 0.00fF
C74 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.05fF
C75 VSS sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0.02fF
C76 sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.62fF
C77 va sky130_asc_nfet_01v8_lvt_1_1/GATE 1.76fF
C78 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_18/Rin 0.03fF
C79 sky130_asc_res_xhigh_po_2p85_1_23/Rin sky130_asc_res_xhigh_po_2p85_1_22/Rin 0.44fF
C80 va sky130_asc_res_xhigh_po_2p85_2_1/Rin 0.74fF
C81 VDD sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.09fF
C82 vb sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0.32fF
C83 sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.06fF
C84 VSS sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.02fF
C85 VSS sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.38fF
C86 sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# sky130_asc_cap_mim_m3_1_4/Cout 0.15fF
C87 VSS sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# 0.02fF
C88 va sky130_asc_res_xhigh_po_2p85_1_29/Rin 1.14fF
C89 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0.10fF
C90 VSS sky130_asc_nfet_01v8_lvt_1_1/DRAIN 1.20fF
C91 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.17fF
C92 VSS sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# 0.21fF
C93 sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.03fF
C94 VDD VSS 54.21fF
C95 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.03fF
C96 VSS sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.68fF
C97 VSS sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.10fF
C98 VSS sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# 0.02fF
C99 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.44fF
C100 VDD sky130_asc_res_xhigh_po_2p85_1_27/Rin 0.19fF
C101 sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_18/Rin 0.18fF
C102 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.61fF
C103 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.10fF
C104 VSS sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# 0.03fF
C105 va sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.26fF
C106 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.74fF
C107 VSS sky130_asc_res_xhigh_po_2p85_1_12/Rin 0.03fF
C108 sky130_asc_res_xhigh_po_2p85_1_9/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.03fF
C109 VDD va 3.76fF
C110 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.92fF
C111 VSS sky130_asc_res_xhigh_po_2p85_1_28/Rin 1.48fF
C112 sky130_asc_res_xhigh_po_2p85_1_23/Rin sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.04fF
C113 vbg sky130_asc_cap_mim_m3_1_4/Cout 0.22fF
C114 va sky130_asc_res_xhigh_po_2p85_1_21/Rin 1.93fF
C115 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.19fF
C116 sky130_asc_res_xhigh_po_2p85_1_18/Rin sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.17fF
C117 VSS porst 1.01fF
C118 VDD sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0.00fF
C119 VSS sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# 0.20fF
C120 sky130_asc_res_xhigh_po_2p85_1_17/Rin vb 0.47fF
C121 VSS sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# 0.08fF
C122 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0.00fF
C123 VSS sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# 0.19fF
C124 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# 0.05fF
C125 sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# sky130_asc_cap_mim_m3_1_4/Cout 0.13fF
C126 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0.33fF
C127 VDD sky130_asc_res_xhigh_po_2p85_1_18/Rin 1.10fF
C128 VSS sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.15fF
C129 va sky130_asc_res_xhigh_po_2p85_1_28/Rin 0.71fF
C130 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.44fF
C131 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.17fF
C132 sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.56fF
C133 sky130_asc_res_xhigh_po_2p85_1_5/Rin vbg 0.01fF
C134 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0.49fF
C135 sky130_asc_res_xhigh_po_2p85_1_27/Rin sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.48fF
C136 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.07fF
C137 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# 0.38fF
C138 vbg sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.31fF
C139 sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.08fF
C140 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.17fF
C141 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.00fF
C142 sky130_asc_res_xhigh_po_2p85_1_10/Rin sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# 0.34fF
C143 VSS sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# 0.02fF
C144 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.72fF
C145 VDD sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.43fF
C146 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.48fF
C147 va sky130_asc_res_xhigh_po_2p85_1_26/Rin 0.03fF
C148 VSS sky130_asc_res_xhigh_po_2p85_1_27/Rin 0.28fF
C149 VDD sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.09fF
C150 sky130_asc_res_xhigh_po_2p85_1_14/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.05fF
C151 VDD sky130_asc_res_xhigh_po_2p85_1_17/Rin 1.64fF
C152 sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_27/Rin 0.18fF
C153 VSS va 2.60fF
C154 sky130_asc_res_xhigh_po_2p85_1_1/Rin vbg 0.59fF
C155 VDD sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.13fF
C156 sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.09fF
C157 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.15fF
C158 VSS sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0.02fF
C159 VSS sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# 0.03fF
C160 VSS sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0.04fF
C161 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.26fF
C162 sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.04fF
C163 sky130_asc_cap_mim_m3_1_4/Cout sky130_asc_nfet_01v8_lvt_1_1/GATE 9.11fF
C164 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_17/Rin 0.03fF
C165 sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.21fF
C166 vb sky130_asc_cap_mim_m3_1_4/Cout 0.28fF
C167 VSS sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0.00fF
C168 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.52fF
C169 sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.00fF
C170 VSS sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# 0.02fF
C171 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.34fF
C172 VSS sky130_asc_res_xhigh_po_2p85_1_18/Rin 0.07fF
C173 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.44fF
C174 sky130_asc_res_xhigh_po_2p85_1_10/Rin porst 0.28fF
C175 sky130_asc_pfet_01v8_lvt_6_1/GATE sky130_asc_cap_mim_m3_1_4/Cout 0.05fF
C176 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.14fF
C177 sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.02fF
C178 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.00fF
C179 sky130_asc_res_xhigh_po_2p85_1_15/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.04fF
C180 VDD sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.17fF
C181 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.24fF
C182 VDD sky130_asc_res_xhigh_po_2p85_1_6/Rin 2.01fF
C183 VDD sky130_asc_res_xhigh_po_2p85_1_25/Rin 1.02fF
C184 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.08fF
C185 VDD sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.31fF
C186 va sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# 0.18fF
C187 sky130_asc_res_xhigh_po_2p85_1_1/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 4.57fF
C188 VDD vbg 0.83fF
C189 VSS sky130_asc_res_xhigh_po_2p85_1_23/Rin 0.68fF
C190 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.18fF
C191 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# sky130_asc_res_xhigh_po_2p85_2_1/Rin 0.49fF
C192 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_cap_mim_m3_1_4/Cout 0.05fF
C193 VDD sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.31fF
C194 sky130_asc_res_xhigh_po_2p85_1_22/Rin sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# 1.21fF
C195 VDD sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.43fF
C196 sky130_asc_res_xhigh_po_2p85_2_0/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.07fF
C197 sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.41fF
C198 sky130_asc_res_xhigh_po_2p85_1_7/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.08fF
C199 VDD sky130_asc_cap_mim_m3_1_4/Cout 1.80fF
C200 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_1/Rin 0.39fF
C201 VSS sky130_asc_res_xhigh_po_2p85_1_10/Rin 0.08fF
C202 VSS sky130_asc_res_xhigh_po_2p85_1_17/Rin 1.02fF
C203 sky130_asc_res_xhigh_po_2p85_1_0/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.33fF
C204 sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.02fF
C205 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0.17fF
C206 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# -0.00fF
C207 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_7/Rin 0.07fF
C208 VSS sky130_asc_res_xhigh_po_2p85_1_14/Rin 0.17fF
C209 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.04fF
C210 vb sky130_asc_res_xhigh_po_2p85_1_19/Rout 6.13fF
C211 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.24fF
C212 VDD sky130_asc_res_xhigh_po_2p85_1_22/Rin 0.06fF
C213 VSS sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0.01fF
C214 porst sky130_asc_res_xhigh_po_2p85_1_9/Rin 3.03fF
C215 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# VSS 0.03fF
C216 vb sky130_asc_nfet_01v8_lvt_1_1/GATE 0.08fF
C217 sky130_asc_res_xhigh_po_2p85_1_22/Rin sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.00fF
C218 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_res_xhigh_po_2p85_1_19/Rin 0.67fF
C219 sky130_asc_res_xhigh_po_2p85_1_28/Rin sky130_asc_cap_mim_m3_1_4/Cout 0.67fF
C220 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.03fF
C221 sky130_asc_res_xhigh_po_2p85_1_5/Rin VDD 0.78fF
C222 sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.18fF
C223 porst vbg 0.03fF
C224 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0.23fF
C225 sky130_asc_res_xhigh_po_2p85_1_13/Rin sky130_asc_res_xhigh_po_2p85_1_11/Rin 0.10fF
C226 sky130_asc_res_xhigh_po_2p85_1_19/Rout sky130_asc_pfet_01v8_lvt_6_1/GATE 0.04fF
C227 sky130_asc_res_xhigh_po_2p85_1_29/Rin sky130_asc_nfet_01v8_lvt_1_1/GATE 0.05fF
C228 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_res_xhigh_po_2p85_1_29/Rin 0.07fF
C229 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# VDD 0.00fF
C230 vb sky130_asc_res_xhigh_po_2p85_1_19/Rin 2.83fF
C231 sky130_asc_res_xhigh_po_2p85_1_5/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.00fF
C232 porst sky130_asc_cap_mim_m3_1_4/Cout 0.81fF
C233 VDD sky130_asc_res_xhigh_po_2p85_1_2/Rin 4.23fF
C234 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# sky130_asc_res_xhigh_po_2p85_1_21/Rin 0.17fF
C235 vb sky130_asc_pfet_01v8_lvt_6_1/GATE 0.26fF
C236 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# sky130_asc_cap_mim_m3_1_4/Cout 0.00fF
C237 VDD sky130_asc_res_xhigh_po_2p85_1_13/Rin 2.45fF
C238 va sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0.00fF
C239 sky130_asc_res_xhigh_po_2p85_1_3/Rin sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.05fF
C240 vb sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0.17fF
C241 porst sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# 0.00fF
C242 VDD sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.08fF
C243 sky130_asc_res_xhigh_po_2p85_1_17/Rin sky130_asc_res_xhigh_po_2p85_1_18/Rin 0.50fF
C244 VSS sky130_asc_res_xhigh_po_2p85_1_9/Rin 0.20fF
C245 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_res_xhigh_po_2p85_1_19/Rout 0.07fF
C246 VSS sky130_asc_res_xhigh_po_2p85_1_6/Rin 0.08fF
C247 VSS sky130_asc_res_xhigh_po_2p85_1_25/Rin 0.64fF
C248 VSS sky130_asc_res_xhigh_po_2p85_2_0/Rin 0.35fF
C249 sky130_asc_res_xhigh_po_2p85_1_4/Rin sky130_asc_res_xhigh_po_2p85_1_3/Rin 0.78fF
C250 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_2/Rin 0.14fF
C251 VDD sky130_asc_res_xhigh_po_2p85_1_19/Rout 0.50fF
C252 VSS vbg 0.94fF
C253 VSS sky130_asc_res_xhigh_po_2p85_1_15/Rin 0.75fF
C254 sky130_asc_nfet_01v8_lvt_1_1/DRAIN sky130_asc_nfet_01v8_lvt_1_1/GATE 0.14fF
C255 VSS sky130_asc_res_xhigh_po_2p85_1_0/Rin 0.24fF
C256 VDD sky130_asc_res_xhigh_po_2p85_1_1/Rin 1.62fF
C257 sky130_asc_res_xhigh_po_2p85_2_1/Rin sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0.20fF
C258 sky130_asc_nfet_01v8_lvt_1_1/DRAIN vb 0.02fF
C259 sky130_asc_res_xhigh_po_2p85_1_12/Rin sky130_asc_res_xhigh_po_2p85_1_13/Rin 0.53fF
C260 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# sky130_asc_res_xhigh_po_2p85_1_4/Rin 0.19fF
C261 VDD sky130_asc_res_xhigh_po_2p85_1_24/Rin 0.26fF
C262 VSS sky130_asc_cap_mim_m3_1_4/Cout 1.28fF
C263 VDD sky130_asc_nfet_01v8_lvt_1_1/GATE 2.89fF
C264 VDD vb 3.66fF
C265 VSS 0 1333.10fF
C266 VDD 0 1599.23fF
C267 sky130_asc_nfet_01v8_lvt_1_1/DRAIN 0 -45.39fF
C268 sky130_asc_res_xhigh_po_2p85_1_5/Rin 0 -8.80fF
C269 sky130_asc_res_xhigh_po_2p85_1_6/a_2148_115# 0 2.33fF
C270 sky130_asc_res_xhigh_po_2p85_1_4/Rin 0 6.97fF
C271 sky130_asc_res_xhigh_po_2p85_1_5/a_2148_115# 0 2.33fF
C272 sky130_asc_res_xhigh_po_2p85_1_4/a_2148_115# 0 2.33fF
C273 sky130_asc_res_xhigh_po_2p85_1_2/Rin 0 -13.63fF
C274 sky130_asc_res_xhigh_po_2p85_1_3/Rin 0 9.89fF
C275 sky130_asc_res_xhigh_po_2p85_1_3/a_2148_115# 0 2.33fF
C276 sky130_asc_res_xhigh_po_2p85_1_1/Rin 0 1.28fF
C277 sky130_asc_res_xhigh_po_2p85_1_2/a_2148_115# 0 2.33fF
C278 sky130_asc_res_xhigh_po_2p85_1_1/a_2148_115# 0 2.33fF
C279 sky130_asc_res_xhigh_po_2p85_1_0/Rin 0 3.40fF
C280 sky130_asc_res_xhigh_po_2p85_1_0/a_2148_115# 0 2.33fF
C281 sky130_asc_res_xhigh_po_2p85_1_19/Rout 0 3.61fF
C282 va 0 0.25fF
C283 sky130_asc_res_xhigh_po_2p85_1_19/a_2148_115# 0 2.33fF
C284 sky130_asc_pfet_01v8_lvt_6_1/GATE 0 -16.36fF
C285 sky130_asc_res_xhigh_po_2p85_1_17/Rin 0 1.05fF
C286 sky130_asc_res_xhigh_po_2p85_1_18/Rin 0 -0.05fF
C287 sky130_asc_res_xhigh_po_2p85_1_18/a_2148_115# 0 2.33fF
C288 sky130_asc_res_xhigh_po_2p85_1_29/a_2148_115# 0 2.33fF
C289 porst 0 6.14fF
C290 sky130_asc_res_xhigh_po_2p85_1_17/a_2148_115# 0 2.33fF
C291 sky130_asc_res_xhigh_po_2p85_1_27/Rin 0 12.87fF
C292 sky130_asc_res_xhigh_po_2p85_1_28/Rin 0 13.02fF
C293 sky130_asc_res_xhigh_po_2p85_1_28/a_2148_115# 0 2.33fF
C294 sky130_asc_res_xhigh_po_2p85_1_16/a_2148_115# 0 2.33fF
C295 sky130_asc_res_xhigh_po_2p85_1_26/Rin 0 5.25fF
C296 sky130_asc_res_xhigh_po_2p85_1_27/a_2148_115# 0 2.33fF
C297 sky130_asc_res_xhigh_po_2p85_1_15/Rin 0 7.84fF
C298 sky130_asc_res_xhigh_po_2p85_1_15/a_2148_115# 0 2.33fF
C299 sky130_asc_res_xhigh_po_2p85_1_26/a_2148_115# 0 2.33fF
C300 sky130_asc_nfet_01v8_lvt_1_1/GATE 0 -35.98fF
C301 sky130_asc_res_xhigh_po_2p85_1_25/Rin 0 17.10fF
C302 sky130_asc_res_xhigh_po_2p85_1_25/a_2148_115# 0 2.33fF
C303 sky130_asc_res_xhigh_po_2p85_1_13/Rin 0 -27.29fF
C304 sky130_asc_res_xhigh_po_2p85_1_14/Rin 0 7.10fF
C305 sky130_asc_res_xhigh_po_2p85_1_14/a_2148_115# 0 2.33fF
C306 sky130_asc_res_xhigh_po_2p85_1_12/Rin 0 5.45fF
C307 sky130_asc_res_xhigh_po_2p85_1_13/a_2148_115# 0 2.33fF
C308 sky130_asc_res_xhigh_po_2p85_1_23/Rin 0 13.09fF
C309 sky130_asc_res_xhigh_po_2p85_1_24/Rin 0 9.08fF
C310 sky130_asc_res_xhigh_po_2p85_1_24/a_2148_115# 0 2.33fF
C311 sky130_asc_res_xhigh_po_2p85_1_12/a_2148_115# 0 2.33fF
C312 sky130_asc_res_xhigh_po_2p85_1_22/Rin 0 4.78fF
C313 sky130_asc_res_xhigh_po_2p85_1_23/a_2148_115# 0 2.33fF
C314 sky130_asc_res_xhigh_po_2p85_2_1/a_2723_115# 0 2.35fF
C315 sky130_asc_res_xhigh_po_2p85_1_11/Rin 0 -17.15fF
C316 sky130_asc_res_xhigh_po_2p85_1_11/a_2148_115# 0 2.33fF
C317 sky130_asc_res_xhigh_po_2p85_1_21/Rin 0 -33.17fF
C318 sky130_asc_res_xhigh_po_2p85_1_22/a_2148_115# 0 2.33fF
C319 sky130_asc_res_xhigh_po_2p85_2_0/a_2723_115# 0 2.35fF
C320 sky130_asc_res_xhigh_po_2p85_1_9/Rin 0 4.61fF
C321 sky130_asc_res_xhigh_po_2p85_1_10/Rin 0 5.52fF
C322 sky130_asc_res_xhigh_po_2p85_1_10/a_2148_115# 0 2.33fF
C323 sky130_asc_res_xhigh_po_2p85_2_1/Rin 0 0.51fF
C324 sky130_asc_res_xhigh_po_2p85_1_21/a_2148_115# 0 2.33fF
C325 sky130_asc_res_xhigh_po_2p85_1_19/Rin 0 6.93fF
C326 vb 0 8.85fF
C327 sky130_asc_res_xhigh_po_2p85_1_20/a_2148_115# 0 2.33fF
C328 sky130_asc_res_xhigh_po_2p85_1_29/Rin 0 22.15fF
C329 sky130_asc_res_xhigh_po_2p85_1_30/a_2148_115# 0 2.33fF
C330 sky130_asc_cap_mim_m3_1_4/Cout 0 -43.17fF
C331 sky130_asc_res_xhigh_po_2p85_2_0/Rin 0 1.73fF
C332 sky130_asc_res_xhigh_po_2p85_1_9/a_2148_115# 0 2.33fF
C333 vbg 0 -4.88fF
C334 sky130_asc_res_xhigh_po_2p85_1_8/a_2148_115# 0 2.33fF
C335 sky130_asc_res_xhigh_po_2p85_1_6/Rin 0 1.48fF
C336 sky130_asc_res_xhigh_po_2p85_1_7/Rin 0 -2.49fF
C337 sky130_asc_res_xhigh_po_2p85_1_7/a_2148_115# 0 2.33fF
.ends

