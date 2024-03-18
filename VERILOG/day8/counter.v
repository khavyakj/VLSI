// Code your design here
module up_counter(
    input clk,
    input rst,
    output reg [3:0] count
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            count <= 4'b0000; // Reset the counter to 0
        end else begin
            count <= count + 1; // Increment the counter
        end
    end

endmodule
