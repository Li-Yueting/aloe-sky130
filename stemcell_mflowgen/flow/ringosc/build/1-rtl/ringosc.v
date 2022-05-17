module ringosc ();
 wire vc;
 sky130_asc_cap_mim_m3_1 C1 (
     .Cin(VDD),
     .Cout(vc)
 );
 sky130_asc_cap_mim_m3_1 C2 (
     .Cin(vc),
     .Cout(VSS)
 );
endmodule

