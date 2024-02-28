module sr_flipflop(input wire s, r, clk, // input signals
                   output reg q, q_bar); // output signals
    always @(posedge clk) begin
        if (s && !r)       // Set condition
            q <= 1'b1;
        else if (!s && r)  // Reset condition
            q <= 1'b0;
    end

    assign q_bar = ~q;    // Q-bar output
endmodule
