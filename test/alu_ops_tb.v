`include "alu.v"

module alu_xor_tb;
    
    // xor
    reg [15:0] a,b;
    reg [3:0] ctl;
    wire [15:0] y;
    wire z;

    alu uut(a, b, ctl, y, z);

    initial begin
        a = 25;
        b = 25;
        ctl = 0;
        #1 ctl = 1;
        #2 ctl = 2;
        #3 ctl = 3;
        #4 ctl = 4;
        #5 ctl = 5;
        #6 a = -10; ctl = 6; 
        #7 ctl = 7;
        #8 ctl = 8;
    end

    initial begin
        $monitor("ctl=%d a=%16b b=%16b y=%16b z=%1b", ctl, a, b, y, z);
    end
endmodule



