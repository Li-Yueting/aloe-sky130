module decoder5x32(
  input [4:0] a,                   // 5 input lines
  input en,                        // enable pin
  output [31:0] y);               // 32 output lines
  wire [3:0] w;                    //for storing the output of 2:4 decoder
  decoder2x4 x1(w,a[4:3],en);     // Calling 2:4 decoder with en and a[4:3] as inputs and w as output
  decoder3x8 x2(y[7:0], a[2:0],w[0]);  // Calling 3:8 decoder with[0] as enable
  decoder3x8 x3(y[15:8], a[2:0],w[1]);
  decoder3x8 x4(y[23:16], a[2:0],w[2]);
  decoder3x8 x5(y[31:24], a[2:0],w[3]);
endmodule
//2:4 decoder
module decoder2x4(
  output reg [3:0] y,
  input [1:0] a,
  input en);
  always @(a,en)               // behavioral modeling, give all the inputs inside always block
    if(en)
    case(a)
    2'b00: y=4'b0001;    // Use the truth table. Very easy to code in behavioral modeling.
    2'b01: y=4'b0010;
    2'b10: y=4'b0100;
    2'b11: y=4'b1000;
    default: y=0;
  endcase
  else y=0;              //if en=0, the output should be 0
endmodule
// 3:8 decoder
module decoder3x8(
  output reg [7:0] y,
  input [2:0] a,
  input en);
  always @(a,en)
    if(en)
    case(a)                                  // Use truth table of 3:8 decoder
    3'b000: y =8'b11111110;           // if input is 000=0
    3'b001: y =8'b11111101;           // if input is 001=1
    3'b010: y =8'b11111011;
    3'b011: y =8'b11110111;
    3'b100: y =8'b11101111;
    3'b101: y =8'b11011111;
    3'b110: y =8'b10111111;
    3'b111: y =8'b01111111;
    default: y=8'b11111111;
  endcase
  else y=8'b11111111;        // if en=0, y=0
endmodule