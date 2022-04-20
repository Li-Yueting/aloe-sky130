//-----------------------------------------------------------------------------
// GcdUnit
//-----------------------------------------------------------------------------
// dump-vcd: False
// verilator-xinit: zeros

// module GcdUnit
// (
//   input  wire clk,
//   input  wire in,
//   output wire out
// );

// sky130_fd_sc_hd__inv_2 inv (
//   .Y(out),
//   .A(in)
// );

// endmodule // GcdUnit

module GcdUnit (
    input wire clk,
    input wire in,
    output wire out
);

//   wire PWR, GND;  
//   assign PWR = 1'b1;
//   assign GND = 1'b0;

  sky130_asc__pfet pfet(
      .GATE(in),
    //   .SOURCE(PWR),
      .DRAIN(out)
  );
  sky130_asc__nfet nfet(
      .GATE(in),
    //   .SOURCE(GND),
      .DRAIN(out)
  );
endmodule
