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