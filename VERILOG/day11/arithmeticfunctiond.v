// Code your design here
module arithmetic_operations(
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] sum,
    output reg [7:0] difference,
    output reg [7:0] product,
    output reg [7:0] quotient
);

// Function to add two numbers
function [7:0] add_numbers;
    input [7:0] x, y;
    begin
        add_numbers = x + y;
    end
endfunction

// Function to subtract two numbers
function [7:0] subtract_numbers;
    input [7:0] x, y;
    begin
        subtract_numbers = x - y;
    end
endfunction

// Function to multiply two numbers
function [7:0] multiply_numbers;
    input [7:0] x, y;
    begin
        multiply_numbers = x * y;
    end
endfunction

// Function to divide two numbers
function [7:0] divide_numbers;
    input [7:0] x, y;
    begin
        if (y != 0)
            divide_numbers = x / y;
        else
            divide_numbers = 8'hFF; // Assuming division by zero results in 255
    end
endfunction

// Main functionality
always @* begin
    sum = add_numbers(a, b);
    difference = subtract_numbers(a, b);
    product = multiply_numbers(a, b);
    quotient = divide_numbers(a, b);
end

endmodule
