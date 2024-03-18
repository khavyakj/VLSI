// Code your testbench here
// or browse Examples
module fibonacci_tb;

    reg clk;
    reg rst;
    wire [7:0] fibonacci_out;

    // Instantiate the fibonacci module
    fibonacci dut (
        .clk(clk),
        .rst(rst),
        .fibonacci_out(fibonacci_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1; // Reset initially

        // Reset
        #10 rst = 0;

        // Generate Fibonacci numbers up to 20 terms
        repeat (20) begin
            #10;
        end

        // Finish simulation
        #10 $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, fibonacci_tb);
    end

endmodule
