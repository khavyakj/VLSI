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

    // Task to perform test case
    task perform_test;
        input [7:0] test_number;
        begin
            number = test_number;
            #10 $display("Number %d is %s", number, (is_even ? "even" : "odd"));
        end
    endtask

    // Initial block
    initial begin
        clk = 0;
        reset = 0;

        // Open VCD file
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Test case 1: Even number (6)
        perform_test(8'd6);

        // Test case 2: Odd number (11)
        perform_test(8'd11);

        // Close VCD file and finish simulation
        #10 $finish;
    end

endmodule
