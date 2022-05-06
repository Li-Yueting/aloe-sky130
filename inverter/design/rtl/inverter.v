module inverter (
    input clk,
    input in,
    output out
);
sky130_asc_pfet_01v8_lvt_1 pfet(
    .GATE(in),
    .SOURCE(VDD),
    .DRAIN(out)
);
sky130_asc_nfet_01v8_lvt_1 nfet(
    .GATE(in),
    .SOURCE(out),
    .DRAIN(VSS)
);
endmodule