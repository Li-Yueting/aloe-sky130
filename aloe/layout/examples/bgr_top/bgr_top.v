module bgr_top (
    inout porst,
    inout va, 
    inout vb,
    inout vbg,
    inout VDD,
    inout VSS
 );
 
 wire vc;
 amplifier amp(
     .va(va),
     .vb(vb),
     .vc(vc),
     .VDD(VDD),
     .VSS(VSS)
 );

 core BGR_Core(
     .va(va),
     .vb(vb),
     .VDD(VDD),
     .VSS(VSS)
 );

 current_mirror CM(
     .va(va),
     .vb(vb),
     .vc(vc),
     .vbg(vbg),
     .VDD(VDD),
     .VSS(VSS)
 );

 // =================================set up ========================
 sky130_asc_nfet_01v8_lvt_9 M10(
     .GATE(porst),
     .SOURCE(VSS),
     .DRAIN(vc)
 );

 wire l17, l18, l19, l20;
 resistor R17 (
     .rin(vbg),
     .rout(l17)
 );
 resistor R18(
     .rin(l17),
     .rout(l18)
 );
 resistor R19(
     .rin(l18),
     .rout(l19)
 );
 resistor R20(
     .rin(l19),
     .rout(l20)
 );
 // === check ===
 sky130_asc_res_xhigh_po_2p85_1 R21(
     .Rin(l20),
     .Rout(VSS)
 );

endmodule

// ============================================ module amplifier =====================================
module amplifier (
    inout va,
    inout vb,
    inout vc,
     inout VSS,
     inout VDD
 );
 wire vg, vq, vx;

 sky130_asc_pfet_01v8_lvt_6 M4 (
     .GATE(vg),
     .SOURCE(VDD),
     .DRAIN(vg)
 );

 sky130_asc_pfet_01v8_lvt_6 M8 (
     .GATE(vg),
     .SOURCE(VDD),
     .DRAIN(vc)
 );

 sky130_asc_nfet_01v8_lvt_9 M9 (
     .GATE(vb),
     .SOURCE(vq),
     .DRAIN(vg)
 );

 sky130_asc_nfet_01v8_lvt_9 M5 (
     .GATE(va),
     .SOURCE(vq),
     .DRAIN(vc)
 );

 sky130_asc_nfet_01v8_lvt_1 M6 (
     .GATE(vx),
     .SOURCE(VSS),
     .DRAIN(vq)
 );

 sky130_asc_nfet_01v8_lvt_1 M7 (
     .GATE(vx),
     .SOURCE(VSS),
     .DRAIN(vx)
 );

 sky130_asc_pfet_01v8_lvt_12 M13 (
     .GATE(vc),
     .SOURCE(VDD),
     .DRAIN(vx)
 );

endmodule

// ===================================== module core =============================
module core (
    inout va,
    inout vb,
     inout VSS,
     inout VDD
 );
 wire vbneg, l6, l7, l8, l10, l11;
//  supply0 ground;
 cap_array C2 (
     .Cin(va),
     .Cout(VSS)
 );
 resistor R6 (
     .rin(va),
     .rout(l6)
 );
 resistor R7 (
     .rin(l6),
     .rout(l7)
 );
 resistor R8 (
     .rin(l7),
     .rout(l8)
 );
 resistor R10 (
     .rin(l8),
     .rout(l10)
 );
 resistor R11 (
     .rin(l10),
     .rout(l11)
 );
 sky130_asc_res_xhigh_po_2p85_2 R9 (
     .Rin(l11),
     .Rout(VSS)
 );
 sky130_asc_pnp_05v5_W3p40L3p40_1 pnp_va (
     .Emitter(va),
     .Base(VSS),
     .Collector(VSS)
 );

 resistor R3 (
     .rin(vb),
     .rout(vbneg)
 );

 pnp_array pnp_vb (
     .emitter(vbneg),
     .base(VSS)
 );

 wire l1, l2, l4, l5, l12;
 resistor R1 (
     .rin(l1),
     .rout(vb)
 );
 resistor R2 (
     .rin(l1),
     .rout(l2)
 );
 resistor R4 (
     .rin(l2),
     .rout(l4)
 );
 resistor R5 (
     .rin(l4),
     .rout(l5)
 );
 resistor R12 (
     .rin(l5),
     .rout(l12)
 );
 sky130_asc_res_xhigh_po_2p85_2 R13 (
     .Rin(l12),
     .Rout(VSS)
 );

endmodule

module resistor (
    inout rin,
    inout rout
  );
  wire l;
  sky130_asc_res_xhigh_po_2p85_1 sub1(
      .Rin(rin),
      .Rout(l)
  );
  sky130_asc_res_xhigh_po_2p85_1 sub2(
      .Rin(l),
      .Rout(rout)
  );
endmodule

module cap_array(
    inout Cin,
    inout Cout
);
sky130_asc_cap_mim_m3_1 CA1 (
    .Cin(Cin),
    .Cout(Cout)
);
sky130_asc_cap_mim_m3_1 CA2 (
    .Cin(Cin),
    .Cout(Cout)
);
sky130_asc_cap_mim_m3_1 CA3 (
    .Cin(Cin),
    .Cout(Cout)
);
sky130_asc_cap_mim_m3_1 CA4 (
    .Cin(Cin),
    .Cout(Cout)
);
sky130_asc_cap_mim_m3_1 CA5 (
    .Cin(Cin),
    .Cout(Cout)
);
endmodule

module pnp_array (
    inout emitter,
    inout base
 );
 sky130_asc_pnp_05v5_W3p40L3p40_8 b1(
     .Emitter(emitter),
     .Collector(base),
     .Base(base)
 );
 sky130_asc_pnp_05v5_W3p40L3p40_8 b2(
     .Emitter(emitter),
     .Collector(base),
     .Base(base)
 );
 sky130_asc_pnp_05v5_W3p40L3p40_8 b3(
     .Emitter(emitter),
     .Collector(base),
     .Base(base)
 );
 sky130_asc_pnp_05v5_W3p40L3p40_8 b4(
     .Emitter(emitter),
     .Collector(base),
     .Base(base)
 );
 sky130_asc_pnp_05v5_W3p40L3p40_7 b5(
     .Emitter(emitter),
     .Collector(base),
     .Base(base)
 );
endmodule

// ============================================== current mirror =================================
module current_mirror (
    inout va,
    inout vb,
    inout vc,
    inout vbg,
     inout VSS,
     inout VDD
 );
 cap_array C1 (
     .Cin(VDD),
     .Cout(vc)
 );
 sky130_asc_pfet_01v8_lvt_12 M17 (
     .GATE(VDD),
     .SOURCE(VDD),
     .DRAIN(va)
 );
 sky130_asc_pfet_01v8_lvt_60 M1 (
     .GATE(vc),
     .SOURCE(VDD),
     .DRAIN(va)
 );
 sky130_asc_pfet_01v8_lvt_60 M2 (
     .GATE(vc),
     .SOURCE(VDD),
     .DRAIN(vb)
 );
 sky130_asc_pfet_01v8_lvt_60 M3 (
     .GATE(vc),
     .SOURCE(VDD),
     .DRAIN(vbg)
 );
endmodule

module sky130_asc_pfet_01v8_lvt_6 (
    inout SOURCE,
    inout GATE,
    inout DRAIN
);
endmodule

module sky130_asc_pfet_01v8_lvt_12 (
    inout SOURCE,
    inout GATE,
    inout DRAIN
);
endmodule

module sky130_asc_pfet_01v8_lvt_60 (
    inout SOURCE,
    inout GATE,
    inout DRAIN
);
endmodule

module sky130_asc_nfet_01v8_lvt_9 (
    inout SOURCE,
    inout GATE,
    inout DRAIN
);
endmodule

module sky130_asc_nfet_01v8_lvt_1 (
    inout SOURCE,
    inout GATE,
    inout DRAIN
);
endmodule

module sky130_asc_pnp_05v5_W3p40L3p40_1 (
    inout Emitter,
    inout Collector,
    inout Base
);
endmodule

module sky130_asc_res_xhigh_po_2p85_2 (
    inout Rin,
    inout Rout
);
endmodule

module sky130_asc_res_xhigh_po_2p85_1 (
    inout Rin,
    inout Rout
);
endmodule

module sky130_asc_cap_mim_m3_1 (
    inout Cin,
    inout Cout
);
endmodule
