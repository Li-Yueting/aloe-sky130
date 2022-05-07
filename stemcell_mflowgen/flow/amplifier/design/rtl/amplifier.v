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