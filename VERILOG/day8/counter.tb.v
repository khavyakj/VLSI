module up_counter_tb;

    reg clk;
    reg rst;
    wire [3:0] count;

    // Instantiate the up_counter module
    up_counter dut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1; // Reset initially

        // Reset
        #10 rst = 0;

        // Generate clock for 100 cycles
        repeat (100) begin
            #10;
        end

        // Finish simulation
        #10 $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, up_counter_tb);
    end

endmodule
