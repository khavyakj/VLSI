// Code your design here
module linear_shift_register (
    input wire clk,          // Clock input
    input wire reset,        // Reset input
    input wire shift_en,     // Shift enable input
    input wire data_in,      // Input data
    output reg [7:0] data_out // Output data, assuming 8-bit shift register
);

// Register to store the shift register data
reg [7:0] shift_reg;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        // Reset the shift register
        shift_reg <= 8'b00000000;
    end else if (shift_en) begin
        // Shift the register
        shift_reg <= {shift_reg[6:0], data_in};
    end
end

// Assign the output
assign data_out = shift_reg;

endmodule
