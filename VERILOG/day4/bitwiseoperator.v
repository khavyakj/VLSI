// Code your design here
module bitwise_operators(
    input [3:0] A,
    input [3:0] B,
    output [3:0] AND_result,
    output [3:0] OR_result,
    output [3:0] XOR_result,
    output [3:0] NOT_A,
    output [3:0] NOT_B
);

    assign AND_result = A & B;
    assign OR_result = A | B;
    assign XOR_result = A ^ B;
    assign NOT_A = ~A;
    assign NOT_B = ~B;

endmodule
