// Code your design here
module logical_operators(
    input A,
    input B,
    output AND_result,
    output OR_result,
    output NOT_A,
    output NOT_B
);

    assign AND_result = A & B;
    assign OR_result = A | B;
    assign NOT_A = ~A;
    assign NOT_B = ~B;

endmodule
