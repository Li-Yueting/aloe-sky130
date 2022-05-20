module ringosc (
    input va,
    input vb,
    input vc,
    output vbg
 );
//  sky130_asc_cap_mim_m3_1 C1 (
//      .Cin(VDD),
//      .Cout(vc)
//  );
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

