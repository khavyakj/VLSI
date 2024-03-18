module factorial_tb;

    // Inputs
    logic [31:0] n;
    
    // Outputs
    logic [31:0] result;
    
    // Instantiate the Unit Under Test (UUT)
    factorial uut (
        .n(n), 
        .result(result)
    );
    
    // Define parameters
    parameter SIM_TIME = 100;
    
    initial begin
        // Initialize inputs
        n = 5; // Change input value as needed
        
        // Wait for stable output
        #SIM_TIME;
        
        // Dump results to a VCD file
        $dumpfile("factorial_tb.vcd");
        $dumpvars(0, factorial_tb);
        
        // Display result
        $display("Factorial of %d is %d", n, result);
        
        // Terminate simulation
        $finish;
    end
    
endmodule
