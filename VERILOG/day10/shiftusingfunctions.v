// Code your design here
module shift_operator (
    input wire [7:0] data,
    input wire [2:0] shift_amount,
    output reg [7:0] shifted_data
);

    // Define shift left function
    function [7:0] shift_left;
        input [7:0] d;
        input [2:0] amount;
        begin
            shift_left = d << amount;
        end
    endfunction

    // Define shift right function
    function [7:0] shift_right;
        input [7:0] d;
        input [2:0] amount;
        begin
            shift_right = d >> amount;
        end
    endfunction

    // Select shift direction based on the shift_amount
    always @* begin
        if (shift_amount[2:0] > 0)
            shifted_data = shift_left(data, shift_amount);
        else
            shifted_data = shift_right(data, -shift_amount);
    end

endmodule
