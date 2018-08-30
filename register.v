// Register module - variable size, clear/hold.

module register(
    input clk,
    input clear,
    input hold,
    input wire [N-1:0] in,
    output reg [N-1:0] out);

    parameter N = 1; // by default 1-bit register

    always @(posedge clk) begin
        if (hold) out <= out;
        else if (clear) out <= {N{1'b0}};
        else out <= in;
    end
endmodule



