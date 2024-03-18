// Code your testbench here
// or browse Examples
module testbench;

    // Inputs
    reg [7:0] number;
    reg clk, reset;

    // Outputs
    wire is_even;

    // Instantiate the module
    odd_even_checker UUT (
        .number(number),
        .is_even(is_even)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Initial block
    initial begin
        clk = 0;
        reset = 0;
        number = 8'd0;

        // Open VCD file
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Test case 1: Even number (6)
        #10 number = 8'd6;
        #10 $display("Number %d is %s", number, (is_even ? "even" : "odd"));

        // Test case 2: Odd number (11)
        #10 number = 8'd11;
        #10 $display("Number %d is %s", number, (is_even ? "even" : "odd"));

        // Close VCD file and finish simulation
        #10 $finish;
    end

endmodule
