// ALU

// Control lines as follows:
// 0 - add a,b
// 1 - sub a,b
// 2 - xor a,b
// 3 - and a,b
// 4 - inc a
// 5 - dec a
// 6 - left shift, arithmetic/logical
// 7 - right logical shift
// 8 - right arithmetic shift
// more tbd

module alu(
    input [15:0] a, b,
    input [3:0] control,
    output reg [15:0] y,
    output zero);

    // zero flag
    assign zero = (0 == y);

    always @(*) begin
        case (control)
            4'd0: y <= a + b;
            4'd1: y <= a - b;
            4'd2: y <= a ^ b;
            4'd3: y <= a & b;
            4'd4: y <= a + 1;
            4'd5: y <= a - 1;
            4'd6: y <= a << 1;
            4'd7: y <= a >> 1;
            4'd8: y <= $signed(a) >>> 1;
            default: y <= 0;
        endcase
    end
        
endmodule

