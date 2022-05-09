module ringosc ();
    wire out1;
    wire out2;
    wire out3;
    wire out4;
    wire out5;
    sky130_asc_pfet_01v8_lvt_1 pfet1(
        .GATE(out5),
        .SOURCE(VDD),
        .DRAIN(out1)
    );
    sky130_asc_nfet_01v8_lvt_1 nfet1(
        .GATE(out5),
        .SOURCE(out1),
        .DRAIN(VSS)
    );
    sky130_asc_pfet_01v8_lvt_1 pfet2(
        .GATE(out1),
        .SOURCE(VDD),
        .DRAIN(out2)
    );
    sky130_asc_nfet_01v8_lvt_1 nfet2(
        .GATE(out1),
        .SOURCE(out2),
        .DRAIN(VSS)
    );
    sky130_asc_pfet_01v8_lvt_1 pfet3(
        .GATE(out2),
        .SOURCE(VDD),
        .DRAIN(out3)
    );
    sky130_asc_nfet_01v8_lvt_1 nfet3(
        .GATE(out2),
        .SOURCE(out3),
        .DRAIN(VSS)
    );
    sky130_asc_pfet_01v8_lvt_1 pfet4(
        .GATE(out3),
        .SOURCE(VDD),
        .DRAIN(out4)
    );
    sky130_asc_nfet_01v8_lvt_1 nfet4(
        .GATE(out3),
        .SOURCE(out4),
        .DRAIN(VSS)
    );
    sky130_asc_pfet_01v8_lvt_1 pfet5(
        .GATE(out4),
        .SOURCE(VDD),
        .DRAIN(out5)
    );
    sky130_asc_nfet_01v8_lvt_1 nfet5(
        .GATE(out4),
        .SOURCE(out5),
        .DRAIN(VSS)
    );
endmodule

