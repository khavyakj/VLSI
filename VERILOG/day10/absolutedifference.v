module absolute_difference(
    input [7:0] num1,
    input [7:0] num2,
    output reg [7:0] abs_diff
);

// Function to compute absolute difference
function [7:0] compute_absolute_difference;
    input [7:0] a, b;
    begin
        if (a > b)
            compute_absolute_difference = a - b;
        else
            compute_absolute_difference = b - a;
    end
endfunction

// Main functionality
always @* begin
    abs_diff = compute_absolute_difference(num1, num2);
end

endmodule
