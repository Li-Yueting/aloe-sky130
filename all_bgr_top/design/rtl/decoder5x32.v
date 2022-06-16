//-----------------------------------------------------------------------------
// analog mux - 5to32 decoder part
//-----------------------------------------------------------------------------
module decoder5x32 (
  `ifdef USE_POWER_PINS
    inout VDD,
    inout VSS,
	`endif
    input [4:0] a,                   // 5 input lines
    input en,                        // enable pin
    output [31:0] y     
);        
endmodule


