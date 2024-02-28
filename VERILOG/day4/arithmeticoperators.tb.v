// Code your design here
module arithmetic_operators(
    input wire [7:0] a,
    input wire [7:0] b,
    output reg [15:0] sum,
    output reg [15:0] difference,
    output reg [15:0] product,
    output reg [15:0] quotient
);

    assign sum = a + b;
    assign difference = a - b;
    assign product = a * b;
    assign quotient = a / b;

endmodule
