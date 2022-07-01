//-----------------------------------------------------------------------------
// analog mux
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros
module switch
(
    `ifdef USE_POWER_PINS
    .VDD,
    .VSS,
    `endif
    input  wire s_en,
    input  wire s_en_b, 
    input wire [31:0] en_b,
    input wire [31:0] in,
    output wire out
);
endmodule
