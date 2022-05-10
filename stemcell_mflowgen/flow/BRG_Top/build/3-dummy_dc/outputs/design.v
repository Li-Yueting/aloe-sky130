module BGR_Top (
    input clk,
    input porst,
    output va, 
    output vb,
    output vbg
 );

 wire vc;
 supply0 ground;
 supply1 power;

 amplifier amp(
     .clk(clk),
     .va(va),
     .vb(vb),
     .vc(vc)
 );

 core BGR_Core(
     .clk(clk),
     .va(va),
     .vb(vb)
 );

 current_mirror CM(
     .clk(clk),
     .va(va),
     .vb(vb),
     .vc(vc),
     .vbg(vbg)
 );

 // =================================set up ========================
 sky130_asc_nfet_01v8_lvt_9 M10(
     .GATE(porst),
     .SOURCE(ground),
     .DRAIN(vc)
 );

 wire l17, l18, l19, l20;
 resistor R17 (
     .rin(l17),
     .rout(vbg)
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
 sky130_asc_res R21(
     .Rin(l20),
     .Rout(ground)
 );

endmodule

// ============================================ module amplifier =====================================
module amplifier (
    input clk,
    output va,
    output vb,
    output vc
 );
 supply1 power;
 supply0 ground;
 wire vg, vq, vx;

 sky130_asc_pfet_01v8_lvt_6 M4 (
     .GATE(vg),
     .SOURCE(power),
     .DRAIN(vg)
 );

 sky130_asc_pfet_01v8_lvt_6 M8 (
     .GATE(vg),
     .SOURCE(power),
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
     .SOURCE(ground),
     .DRAIN(vq)
 );

 sky130_asc_nfet_01v8_lvt_1 M7 (
     .GATE(vx),
     .SOURCE(ground),
     .DRAIN(vx)
 );

 sky130_asc_pfet_01v8_lvt_12 M13 (
     .GATE(vc),
     .SOURCE(power),
     .DRAIN(vx)
 );

endmodule

// ===================================== module core =============================
module core (
    input clk,
    output va,
    output vb
 );
 supply1 power;
 supply0 ground;
 wire vbneg, l6, l7, l8, l10, l11;

 resistor R6 (
     .rin(l6),
     .rout(va)
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
 sky130_asc_res_2 R9 (
     .Rin(l11),
     .Rout(ground)
 );

 sky130_asc_pnp_0 pnp_va (
     .Emitter(va),
     .Base(ground),
     .Collector(ground)
 );

 resistor R3 (
     .rin(vb),
     .rout(vbneg)
 );

 pnp_array pnp_vb (
     .emitter(vbneg),
     .base(ground)
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
 sky130_asc_res_2 R13 (
     .Rin(l12),
     .Rout(ground)
 );

endmodule

module resistor (
    input rin,
    output rout
  );
  wire l;
  sky130_asc_res sub1(
      .Rin(rin),
      .Rout(l)
  );
  sky130_asc_res sub2(
      .Rin(l),
      .Rout(rout)
  );
endmodule

module pnp_array (
    input emitter,
    output base
 );
 sky130_asc_pnp_8 b1(
     .Emitter(emitter),
     .Base(base)
 );
 sky130_asc_pnp_8 b2(
     .Emitter(emitter),
     .Base(base)
 );
 sky130_asc_pnp_8 b3(
     .Emitter(emitter),
     .Base(base)
 );
 sky130_asc_pnp_8 b4(
     .Emitter(emitter),
     .Base(base)
 );
 sky130_asc_pnp_7 b5(
     .Emitter(emitter),
     .Base(base)
 );
endmodule

// ============================================== current mirror =================================
module current_mirror (
    input clk,
    input va,
    input vb,
    input vc,
    output vbg
 );
 supply1 power;
 supply0 ground;

 sky130_asc_pfet_01v8_lvt_12 M17 (
     .GATE(power),
     .SOURCE(power),
     .DRAIN(va)
 );

 sky130_asc_pfet_01v8_lvt_60 M1 (
     .GATE(vc),
     .SOURCE(power),
     .DRAIN(va)
 );

 sky130_asc_pfet_01v8_lvt_60 M2 (
     .GATE(vc),
     .SOURCE(power),
     .DRAIN(vb)
 );

 sky130_asc_pfet_01v8_lvt_60 M3 (
     .GATE(vc),
     .SOURCE(power),
     .DRAIN(vbg)
 );

endmodule