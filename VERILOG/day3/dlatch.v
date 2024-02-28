// Code your design here
module d_latch (
    input D,
    input EN,
    output reg Q
);

    always @(posedge EN)
        if (EN)
            Q <= D;

endmodule
