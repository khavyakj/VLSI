// Code your testbench here
// or browse Examples
module sr_flipflop_tb;
    // Define parameters
    parameter PERIOD = 10; // Clock period
    
    // Declare signals
    reg s, r, clk;
    wire q, q_bar;
    
    // Instantiate SR Flip-Flop
    sr_flipflop sr_ff (.s(s), .r(r), .clk(clk), .q(q), .q_bar(q_bar));
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Stimulus generation
    initial begin
        $dumpfile("waveform.vcd"); // Create VCD file for waveform dumping
        $dumpvars(0, sr_flipflop_tb); // Dump variables for waveform generation
        
        // Test case 1: Set operation
        s = 1'b1;
        r = 1'b0;
        #20 s = 1'b0;
        
        // Test case 2: Reset operation
        s = 1'b0;
        r = 1'b1;
        #20 r = 1'b0;
        
        // Test case 3: No operation
        s = 1'b0;
        r = 1'b0;
        #20 $finish; // Stop simulation
    end
    
    // Display output
    always @(posedge clk) begin
        $display("Time=%t, S=%b, R=%b, Q=%b, Q_bar=%b", $time, s, r, q, q_bar);
    end
endmodule
