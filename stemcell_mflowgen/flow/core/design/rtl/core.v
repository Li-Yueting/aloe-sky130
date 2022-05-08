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