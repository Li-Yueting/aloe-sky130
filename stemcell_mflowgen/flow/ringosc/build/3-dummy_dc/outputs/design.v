module ringosc (
    output vc
 );
 sky130_asc_cap_mim_m3_1 C1 (
     .Cin(VDD),
     .Cout(vc)
 );
endmodule

