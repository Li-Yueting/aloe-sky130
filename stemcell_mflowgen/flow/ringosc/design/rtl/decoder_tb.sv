`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module decoder_tb;

    reg [4:0]a;
    reg en;
    wire[31:0] y;

    // duration for each bit = 20 * timescale = 20 * 1 ns  = 20ns
    localparam period = 20;  

    decoder5x32 tt(
        .a(a),
        .en(en),
        .y(y)
    );
    
    initial // initial block executes only once
        begin
            en = 0;
            a = 5'b00000;
            #period; // wait for period 
            assert(y == 32'b11111111111111111111111111111111)$display ("test1 pass");
            else $error("fail");
            
            en = 1;
            #period;
            assert(y == 32'b11111111111111111111111111111110)$display ("test2 pass");
            else $error("fail");

            a = 5'b00001;
            #period;
            assert(y == 32'b11111111111111111111111111111101)$display ("test3 pass");
            else $error("fail");

            a = 5'b00010;
            #period;
            assert(y == 32'b11111111111111111111111111111011)$display ("test4 pass");
            else $error("fail");

            a = 5'b00011;
            #period;
            assert(y == 32'b11111111111111111111111111110111)$display ("test5 pass");
            else $error("fail");

            a = 5'b00100;
            #period;
            assert(y == 32'b11111111111111111111111111101111)$display ("test6 pass");
            else $error("fail");

            a = 5'b00101;
            #period;
            assert(y == 32'b11111111111111111111111111011111)$display ("test7 pass");
            else $error("fail");

            a = 5'b00110;
            #period;
            assert(y == 32'b11111111111111111111111110111111)$display ("test8 pass");
            else $error("fail");

            a = 5'b11111;
            #period;
            assert(y == 32'b01111111111111111111111111111111)$display ("test9 pass");
            else $error("fail");

            a = 5'b11110;
            #period;
            assert(y == 32'b10111111111111111111111111111111)$display ("test10 pass");
            else $error("fail");
        end
endmodule