* NGSPICE file created from decoder5x32.ext - technology: sky130A

.subckt sky130_fd_sc_hd__nand3_1 Y A C B VGND VPWR VNB VPB
X0 VPWR B Y VPB sky130_fd_pr__pfet_01v8_hvt ad=5.9e+11p pd=5.18e+06u as=5.3e+11p ps=5.06e+06u w=1e+06u l=150000u
X1 Y A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X2 a_193_47# B a_109_47# VNB sky130_fd_pr__nfet_01v8 ad=2.145e+11p pd=1.96e+06u as=1.755e+11p ps=1.84e+06u w=650000u l=150000u
X3 Y A a_193_47# VNB sky130_fd_pr__nfet_01v8 ad=1.69e+11p pd=1.82e+06u as=0p ps=0u w=650000u l=150000u
X4 Y C VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X5 a_109_47# C VGND VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=1.69e+11p ps=1.82e+06u w=650000u l=150000u
.ends

.subckt sky130_fd_sc_hd__nand4_1 C B Y D A VPWR VGND VNB VPB
X0 Y B VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=6e+11p pd=5.2e+06u as=8.3e+11p ps=7.66e+06u w=1e+06u l=150000u
X1 VPWR A Y VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X2 VPWR C Y VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X3 a_193_47# C a_109_47# VNB sky130_fd_pr__nfet_01v8 ad=1.755e+11p pd=1.84e+06u as=1.755e+11p ps=1.84e+06u w=650000u l=150000u
X4 Y A a_277_47# VNB sky130_fd_pr__nfet_01v8 ad=1.95e+11p pd=1.9e+06u as=2.145e+11p ps=1.96e+06u w=650000u l=150000u
X5 a_277_47# B a_193_47# VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=650000u l=150000u
X6 Y D VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X7 a_109_47# D VGND VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=1.69e+11p ps=1.82e+06u w=650000u l=150000u
.ends

.subckt sky130_fd_sc_hd__nor2_1 B Y A VGND VPWR VNB VPB
X0 VPWR A a_109_297# VPB sky130_fd_pr__pfet_01v8_hvt ad=2.6e+11p pd=2.52e+06u as=2.1e+11p ps=2.42e+06u w=1e+06u l=150000u
X1 VGND A Y VNB sky130_fd_pr__nfet_01v8 ad=3.38e+11p pd=3.64e+06u as=1.755e+11p ps=1.84e+06u w=650000u l=150000u
X2 a_109_297# B Y VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=2.6e+11p ps=2.52e+06u w=1e+06u l=150000u
X3 Y B VGND VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=650000u l=150000u
.ends

.subckt sky130_fd_sc_hd__nand2b_1 Y A_N B VGND VPWR VNB VPB
X0 VGND A_N a_27_93# VNB sky130_fd_pr__nfet_01v8 ad=2.005e+11p pd=1.97e+06u as=1.092e+11p ps=1.36e+06u w=420000u l=150000u
X1 Y a_27_93# a_206_47# VNB sky130_fd_pr__nfet_01v8 ad=1.69e+11p pd=1.82e+06u as=1.755e+11p ps=1.84e+06u w=650000u l=150000u
X2 a_206_47# B VGND VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=650000u l=150000u
X3 VPWR a_27_93# Y VPB sky130_fd_pr__pfet_01v8_hvt ad=5.565e+11p pd=5.2e+06u as=2.7e+11p ps=2.54e+06u w=1e+06u l=150000u
X4 Y B VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X5 VPWR A_N a_27_93# VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=1.092e+11p ps=1.36e+06u w=420000u l=150000u
.ends

.subckt sky130_fd_sc_hd__nand2_1 Y B A VGND VPWR VNB VPB
X0 VPWR A Y VPB sky130_fd_pr__pfet_01v8_hvt ad=5.2e+11p pd=5.04e+06u as=2.7e+11p ps=2.54e+06u w=1e+06u l=150000u
X1 Y A a_113_47# VNB sky130_fd_pr__nfet_01v8 ad=1.69e+11p pd=1.82e+06u as=1.755e+11p ps=1.84e+06u w=650000u l=150000u
X2 a_113_47# B VGND VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=1.69e+11p ps=1.82e+06u w=650000u l=150000u
X3 Y B VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
.ends

.subckt sky130_fd_sc_hd__clkinv_1 Y A VGND VPWR VNB VPB
X0 Y A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=2.268e+11p pd=2.22e+06u as=4.536e+11p ps=4.44e+06u w=840000u l=150000u
X1 VGND A Y VNB sky130_fd_pr__nfet_01v8 ad=1.197e+11p pd=1.41e+06u as=1.092e+11p ps=1.36e+06u w=420000u l=150000u
X2 VPWR A Y VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
.ends

.subckt sky130_fd_sc_hd__nor2b_1 B_N Y A VGND VPWR VNB VPB
X0 Y a_74_47# a_265_297# VPB sky130_fd_pr__pfet_01v8_hvt ad=2.6e+11p pd=2.52e+06u as=2.1e+11p ps=2.42e+06u w=1e+06u l=150000u
X1 VPWR B_N a_74_47# VPB sky130_fd_pr__pfet_01v8_hvt ad=3.146e+11p pd=2.78e+06u as=1.092e+11p ps=1.36e+06u w=420000u l=150000u
X2 a_265_297# A VPWR VPB sky130_fd_pr__pfet_01v8_hvt ad=0p pd=0u as=0p ps=0u w=1e+06u l=150000u
X3 Y A VGND VNB sky130_fd_pr__nfet_01v8 ad=1.755e+11p pd=1.84e+06u as=3.695e+11p ps=3.79e+06u w=650000u l=150000u
X4 VGND B_N a_74_47# VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=1.092e+11p ps=1.36e+06u w=420000u l=150000u
X5 VGND a_74_47# Y VNB sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=650000u l=150000u
.ends

.subckt decoder5x32 a[4] a[3] a[2] a[1] a[0] en y[31] y[30] y[29] y[28] y[27] y[26]
+ y[25] y[24] y[23] y[22] y[21] y[20] y[19] y[18] y[17] y[16] y[15] y[14] y[13] y[12]
+ y[11] y[10] y[9] y[8] y[7] y[6] y[5] y[4] y[3] y[2] y[1] y[0] VSS VDD
Xsky130_fd_sc_hd__nand3_1_13 y[4] sky130_fd_sc_hd__nor2_1_7/Y a[2] sky130_fd_sc_hd__nor2_1_8/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_14 y[3] a[1] sky130_fd_sc_hd__nor2b_1_3/Y a[0] VSS VDD VSS
+ VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_15 y[1] a[0] sky130_fd_sc_hd__nor2_1_6/B sky130_fd_sc_hd__nor2b_1_3/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand4_1_0 sky130_fd_sc_hd__nor2_1_9/Y a[0] y[31] a[2] a[1] VDD VSS
+ VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_0 sky130_fd_sc_hd__nor2_1_0/B sky130_fd_sc_hd__nor2_1_0/Y
+ a[0] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_1 a[2] sky130_fd_sc_hd__nor2_1_9/Y y[29] sky130_fd_sc_hd__nor2_1_0/B
+ a[0] VDD VSS VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_1 a[0] sky130_fd_sc_hd__nor2_1_1/Y a[1] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_2 sky130_fd_sc_hd__nor2_1_10/Y a[0] y[23] a[2] a[1] VDD
+ VSS VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_2 sky130_fd_sc_hd__nor2_1_2/B sky130_fd_sc_hd__nor2_1_2/Y
+ a[0] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_3 a[2] sky130_fd_sc_hd__nor2_1_10/Y y[21] sky130_fd_sc_hd__nor2_1_2/B
+ a[0] VDD VSS VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_3 a[0] sky130_fd_sc_hd__nor2_1_3/Y a[1] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_4 sky130_fd_sc_hd__nor2_1_11/Y a[0] y[15] a[2] a[1] VDD
+ VSS VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_4 sky130_fd_sc_hd__nor2_1_4/B sky130_fd_sc_hd__nor2_1_4/Y
+ a[0] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_5 a[2] sky130_fd_sc_hd__nor2_1_11/Y y[13] sky130_fd_sc_hd__nor2_1_4/B
+ a[0] VDD VSS VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_5 a[0] sky130_fd_sc_hd__nor2_1_5/Y a[1] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_6 sky130_fd_sc_hd__nor2_1_8/Y a[0] y[7] a[2] a[1] VDD VSS
+ VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_6 sky130_fd_sc_hd__nor2_1_6/B sky130_fd_sc_hd__nor2_1_6/Y
+ a[0] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand4_1_7 a[2] sky130_fd_sc_hd__nor2_1_8/Y y[5] sky130_fd_sc_hd__nor2_1_6/B
+ a[0] VDD VSS VSS VDD sky130_fd_sc_hd__nand4_1
Xsky130_fd_sc_hd__nor2_1_7 a[0] sky130_fd_sc_hd__nor2_1_7/Y a[1] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nor2_1_10 sky130_fd_sc_hd__nor2_1_9/B sky130_fd_sc_hd__nor2_1_10/Y
+ a[3] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nor2_1_8 sky130_fd_sc_hd__nor2_1_8/B sky130_fd_sc_hd__nor2_1_8/Y
+ a[3] VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nor2_1_11 sky130_fd_sc_hd__nor2_1_8/B sky130_fd_sc_hd__nor2_1_11/Y
+ sky130_fd_sc_hd__nor2_1_9/A VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nor2_1_9 sky130_fd_sc_hd__nor2_1_9/B sky130_fd_sc_hd__nor2_1_9/Y
+ sky130_fd_sc_hd__nor2_1_9/A VSS VDD VSS VDD sky130_fd_sc_hd__nor2_1
Xsky130_fd_sc_hd__nand3_1_0 y[30] sky130_fd_sc_hd__nor2_1_9/Y sky130_fd_sc_hd__nor2_1_0/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_1 y[28] sky130_fd_sc_hd__nor2_1_1/Y a[2] sky130_fd_sc_hd__nor2_1_9/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_2 y[27] a[1] sky130_fd_sc_hd__nor2b_1_0/Y a[0] VSS VDD VSS
+ VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_3 y[25] a[0] sky130_fd_sc_hd__nor2_1_0/B sky130_fd_sc_hd__nor2b_1_0/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_4 y[22] sky130_fd_sc_hd__nor2_1_10/Y sky130_fd_sc_hd__nor2_1_2/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_5 y[20] sky130_fd_sc_hd__nor2_1_3/Y a[2] sky130_fd_sc_hd__nor2_1_10/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_6 y[19] a[1] sky130_fd_sc_hd__nor2b_1_1/Y a[0] VSS VDD VSS
+ VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_7 y[17] a[0] sky130_fd_sc_hd__nor2_1_2/B sky130_fd_sc_hd__nor2b_1_1/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand3_1_8 y[14] sky130_fd_sc_hd__nor2_1_11/Y sky130_fd_sc_hd__nor2_1_4/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand2b_1_0 sky130_fd_sc_hd__nor2_1_8/B a[4] en VSS VDD VSS VDD sky130_fd_sc_hd__nand2b_1
Xsky130_fd_sc_hd__nand3_1_9 y[12] sky130_fd_sc_hd__nor2_1_5/Y a[2] sky130_fd_sc_hd__nor2_1_11/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand2_1_0 y[26] sky130_fd_sc_hd__nor2_1_0/Y sky130_fd_sc_hd__nor2b_1_0/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__nand2_1_1 y[24] sky130_fd_sc_hd__nor2b_1_0/Y sky130_fd_sc_hd__nor2_1_1/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__clkinv_1_0 sky130_fd_sc_hd__nor2_1_0/B a[1] VSS VDD VSS VDD sky130_fd_sc_hd__clkinv_1
Xsky130_fd_sc_hd__nand2_1_2 y[18] sky130_fd_sc_hd__nor2_1_2/Y sky130_fd_sc_hd__nor2b_1_1/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__nor2b_1_0 sky130_fd_sc_hd__nor2_1_9/Y sky130_fd_sc_hd__nor2b_1_0/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nor2b_1
Xsky130_fd_sc_hd__clkinv_1_1 sky130_fd_sc_hd__nor2_1_2/B a[1] VSS VDD VSS VDD sky130_fd_sc_hd__clkinv_1
Xsky130_fd_sc_hd__nand2_1_3 y[16] sky130_fd_sc_hd__nor2b_1_1/Y sky130_fd_sc_hd__nor2_1_3/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__nor2b_1_1 sky130_fd_sc_hd__nor2_1_10/Y sky130_fd_sc_hd__nor2b_1_1/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nor2b_1
Xsky130_fd_sc_hd__clkinv_1_2 sky130_fd_sc_hd__nor2_1_4/B a[1] VSS VDD VSS VDD sky130_fd_sc_hd__clkinv_1
Xsky130_fd_sc_hd__nor2b_1_2 sky130_fd_sc_hd__nor2_1_11/Y sky130_fd_sc_hd__nor2b_1_2/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nor2b_1
Xsky130_fd_sc_hd__nand2_1_4 y[10] sky130_fd_sc_hd__nor2_1_4/Y sky130_fd_sc_hd__nor2b_1_2/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__clkinv_1_3 sky130_fd_sc_hd__nor2_1_6/B a[1] VSS VDD VSS VDD sky130_fd_sc_hd__clkinv_1
Xsky130_fd_sc_hd__nor2b_1_3 sky130_fd_sc_hd__nor2_1_8/Y sky130_fd_sc_hd__nor2b_1_3/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nor2b_1
Xsky130_fd_sc_hd__nand2_1_5 y[8] sky130_fd_sc_hd__nor2b_1_2/Y sky130_fd_sc_hd__nor2_1_5/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__clkinv_1_4 sky130_fd_sc_hd__nor2_1_9/A a[3] VSS VDD VSS VDD sky130_fd_sc_hd__clkinv_1
Xsky130_fd_sc_hd__nand3_1_10 y[11] a[1] sky130_fd_sc_hd__nor2b_1_2/Y a[0] VSS VDD
+ VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand2_1_6 y[2] sky130_fd_sc_hd__nor2_1_6/Y sky130_fd_sc_hd__nor2b_1_3/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__nand3_1_11 y[9] a[0] sky130_fd_sc_hd__nor2_1_4/B sky130_fd_sc_hd__nor2b_1_2/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand2_1_7 y[0] sky130_fd_sc_hd__nor2b_1_3/Y sky130_fd_sc_hd__nor2_1_7/Y
+ VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
Xsky130_fd_sc_hd__nand3_1_12 y[6] sky130_fd_sc_hd__nor2_1_8/Y sky130_fd_sc_hd__nor2_1_6/Y
+ a[2] VSS VDD VSS VDD sky130_fd_sc_hd__nand3_1
Xsky130_fd_sc_hd__nand2_1_8 sky130_fd_sc_hd__nor2_1_9/B en a[4] VSS VDD VSS VDD sky130_fd_sc_hd__nand2_1
.ends

