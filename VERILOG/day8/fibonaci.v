// Code your design here
module fibonacci (
    input logic clk,
    input logic rst,
    output logic [7:0] fibonacci_out
);

    logic [7:0] a, b, next;

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            a <= 0;
            b <= 1;
        end else begin
            next = a + b;
            a <= b;
            b <= next;
        end
    end

    assign fibonacci_out = a;

endmodule
