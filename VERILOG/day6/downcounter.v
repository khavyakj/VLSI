// Code your design here
module down_counter(
    input clk,    // Clock input
    input rst,    // Reset input
    output reg [3:0] count // 4-bit counter output
);

// Always block for synchronous counter operation
always @(posedge clk or posedge rst)
begin
    if (rst) // Reset condition
        count <= 4'b1111;
    else // Decrement counter
        count <= count - 1;
end

endmodule
