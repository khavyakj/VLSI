// Code your design here
module adder_with_function(
    input [7:0] num1,
    input [7:0] num2,
    output reg [7:0] sum
);

// Function to add two numbers
function [7:0] add_numbers;
    input [7:0] a, b;
    begin
        add_numbers = a + b;
    end
endfunction

// Main functionality
always @* begin
    sum = add_numbers(num1, num2);
end

endmodule
