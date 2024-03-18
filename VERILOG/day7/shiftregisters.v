// Code your design here
module shift_operator(
    input wire [3:0] data_in,
    input wire [1:0] shift_amount,
    output reg [3:0] data_out
);

always @* begin
    case (shift_amount)
        2'b00: data_out = data_in; // no shift
        2'b01: data_out = data_in << 1; // left shift by 1
        2'b10: data_out = data_in >> 1; // right shift by 1
        2'b11: data_out = data_in << 2; // left shift by 2
        default: data_out = 4'b0000; // default case
    endcase
end

endmodule
