module inverter (
    input en,
    input in,
    input clk,
    output out
);
wire ds;
sky130_asc_pfet_01v8_lvt_1 pfet(
    .GATE(en),
    .SOURCE(in),
    .DRAIN(ds)
);
sky130_asc_nfet_01v8_lvt_1 nfet(
    .GATE(en),
    .SOURCE(ds),
    .DRAIN(out)
);
endmodule