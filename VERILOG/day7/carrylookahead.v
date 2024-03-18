// Code your design here
module cl_adder (
    input [3:0] A, // 4-bit input A
    input [3:0] B, // 4-bit input B
    input cin,     // Carry-in
    output [3:0] sum, // 4-bit output sum
    output cout    // Carry-out
);

assign {cout, sum} = A + B + cin;

endmodule
