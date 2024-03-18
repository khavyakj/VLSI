// Code your testbench here
// or browse Examples
module Testbench;
    // Signals
    logic [31:0] a, b, a_swapped, b_swapped;

    // Instantiate the Unit Under Test (UUT)
    Swap UUT (
        .a(a),
        .b(b),
        .a_swapped(a_swapped),
        .b_swapped(b_swapped)
    );

    // Stimulus
    initial begin
        $dumpfile("swap_waveform.vcd");
        $dumpvars(0, Testbench);
        $display("Running swap testbench...");
        
        // Initial values
        a = 5; // Example initial value for a
        b = 10; // Example initial value for b
        
        // Wait for a few time units for signals to stabilize
        #10;
        
        // Display initial values
        $display("Initial values: a = %d, b = %d", a, b);
        
        // Wait for a few more time units for better visualization in waveform
        #10;
        
        // Swap values
        a = 15;
        b = 20;
        
        // Wait for a few time units before stopping simulation
        #10;
        
        // Finish simulation
        $display("Testbench completed.");
        $finish;
    end

endmodule
