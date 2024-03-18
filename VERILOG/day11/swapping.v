// Code your design here
module Swap(
    input logic [31:0] a,
    input logic [31:0] b,
    output logic [31:0] a_swapped,
    output logic [31:0] b_swapped
);

    assign a_swapped = b;
    assign b_swapped = a;

endmodule
