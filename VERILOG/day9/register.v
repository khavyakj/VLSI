// Code your design here
module register(
    input clk,
    input rst,
    input [7:0] data_in,
    input write_enable,
    output reg [7:0] data_out
);

    reg [7:0] reg_data;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            reg_data <= 8'h00; // Reset the register to 0
        end else if (write_enable) begin
            reg_data <= data_in; // Write operation
        end
    end

    assign data_out = reg_data; // Output data

endmodule
