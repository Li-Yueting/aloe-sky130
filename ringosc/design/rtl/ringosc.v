module ringosc (
    input en,
    input clk
);
    wire out1;
    wire out2;
    wire out3;
    wire out4;
    wire out5;
    inverter inv1(
        .en(en),
        .in(out3),
        .clk(clk),
        .out(out1)
    );
    inverter inv2(
        .en(en),
        .in(out1),
        .clk(clk),
        .out(out2)
    );
    inverter inv3(
        .en(en),
        .in(out2),
        .clk(clk),
        .out(out3)
    );
    inverter inv4(
        .en(en),
        .in(out3),
        .clk(clk),
        .out(out4)
    );
    inverter inv5(
        .en(en),
        .in(out4),
        .clk(clk),
        .out(out5)
    );
endmodule



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