`default_nettype none
`define MPRJ_IO_PADS 38

module all_bgr_top #(
    parameter BITS = 32
  ) (
  `ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
  `endif
    input wire [31:0] porst,                       // start up signal for 32 BGR macros     
    input wire [4:0] s_vbgr,                   // 5 select lines for Vbgr
    input wire [4:0] s_va,                   // 5 select lines for Va
    input wire [4:0] s_vb,                   // 5 select lines for Vb
    input wire decoder_en_vbgr,                        // decoder enable pin for Vbgr 
    input wire decoder_en_va,                        // decoder enable pin for Va
    input wire decoder_en_vb,                        // decoder enable pin for Vb
    input wire switch_en_vbgr,                        // switch enable pin for Vbgr 
    input wire switch_en_va,                        // switch enable pin for Va
    input wire switch_en_vb,                        // switch enable pin for Vb
    output wire out_vbgr,                         // Vout for vbgr
    output wire out_va,                         // Vout for va
    output wire out_vb                         // Vout for vb
  );
  /*--------------------------------------*/
  /* all_bgr_top is initiated here  */
  /*--------------------------------------*/
  
  /* inverters */
  wire switch_en_b_vbgr,  switch_en_b_va, switch_en_b_vb;
  // inv inv_vbgr (
  //   .a(switch_en_vbgr),
  //   .b(switch_en_b_vbgr)
  // );
  assign switch_en_b_vbgr = ~switch_en_vbgr;
  assign switch_en_b_va   = ~switch_en_va;
  assign switch_en_b_vb   = ~switch_en_vb;
  // inv inv_va (
  //   .a(switch_en_va),
  //   .b(switch_en_b_va)
  // );
  // inv inv_vb (
  //   .a(switch_en_vb),
  //   .b(switch_en_b_vb)
  // );
  /* bgr */
  wire [31:0] vbgr;
  wire [31:0] va;
  wire [31:0] vb;
  wire bgr0_out;
  bgr_0 bgr_inst_0 (
    `ifdef USE_POWER_PINS
    .VDD(vccd1),
    .VSS(vssd1),
    `endif
    .porst(porst[0]),
    .va(va[0]),
    .vb(vb[0]),
    .vbg(bgr0_out)  
  );
  assign vbgr[0] = bgr0_out;
 /* decoder */
  wire [31:0] c_vbgr; //Vbgr 32-to-1 mux control signal
  decoder5x32 decoder_vbgr (
    `ifdef USE_POWER_PINS
    .VDD(vccd1),
    .VSS(vssd1),
    `endif
    .a(s_vbgr),
    .en(decoder_en_vbgr),
    .y(c_vbgr)
  );
  /* switch */
  switch switch_vbgr (
    `ifdef USE_POWER_PINS
    .VDD(vccd1),
    .VSS(vssd1),
    `endif
    .s_en(switch_en_vbgr),
    .s_en_b(switch_en_b_vbgr),
    .en_b(c_vbgr),
    .in(vbgr[31:0]),
    .out(out_vbgr)
  );
endmodule
`default_nettype wire

module inv (a, b);
  input wire a;
  output wire b;
  assign b = ~ a;
endmodule