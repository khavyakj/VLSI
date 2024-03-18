// Code your design here
module odd_even_checker (
    input wire [7:0] number,
    output reg is_even
);

// Logic to check if the number is even or odd
always @(*)
begin
    if (number % 2 == 0) // Check if the number is divisible by 2
        is_even = 1;     // Set is_even to 1 if the number is even
    else
        is_even = 0;     // Set is_even to 0 if the number is odd
end

endmodule
