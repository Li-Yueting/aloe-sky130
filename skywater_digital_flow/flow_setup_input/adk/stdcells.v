`ifndef SKY130_ASC__PFET_V
`define SKY130_ASC__PFET_V

/**
 * PFET
 *
 * Verilog wrapper for pfet.
 *
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`celldefine
module sky130_fd_sc_hd__pfet (
    GATE  ,
    SOURCE,
    DRAIN ,
    VPB   ,
    VPWR  ,
    VGND   
);

    // Module ports
    output DRAIN ;
    input  GATE  ;
    input  SOURCE;
    input  VPB   ;
    input  VPWR  ;
    input  VGND  ;

endmodule
`endcelldefine

`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hd__pfet (
    GATE,
    DRAIN
);

    // Module ports
    output DRAIN ;
    input  GATE  ;
    // Voltage supply signals
    supply1 SOURCE;
    supply1 VPWR  ;
    supply0 VGND  ;
    supply1 VPB   ;

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_ASC__PFET_V




`ifndef SKY130_ASC__NFET_V
`define SKY130_ASC__NFET_V

/**
 * PFET
 *
 * Verilog wrapper for pfet.
 *
 */

`timescale 1ns / 1ps
`default_nettype none

`ifdef USE_POWER_PINS

`celldefine
module sky130_fd_sc_hd__nfet (
    GATE  ,
    SOURCE,
    DRAIN ,
    VNB   ,
    VPWR  ,
    VGND    
);

    // Module ports
    output DRAIN ;
    input  GATE  ;
    input  SOURCE;
    input  VNB   ;
    input  VPWR  ;
    input  VGND  ;

endmodule
`endcelldefine

`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hd__nfet (
    GATE,
    DRAIN
);

    // Module ports
    output DRAIN ;
    input  GATE  ;
    // Voltage supply signals
    supply1 VPWR  ;
    supply0 VGND  ;
    supply0 VNB   ;
    supply0 SOURCE;

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_ASC__NFET_V
