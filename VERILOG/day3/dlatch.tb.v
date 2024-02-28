// Code your testbench here
// or browse Examples
module testbench;

    // Inputs
    reg D;
    reg EN;

    // Outputs
    wire Q;

    // Instantiate the D latch
    d_latch UUT (
        .D(D),
        .EN(EN),
        .Q(Q)
    );

    // Stimulus
    initial begin
        // Initialize inputs
        D = 1'b0;
        EN = 1'b0;

        // Change inputs
        #10 D = 1'b1; EN = 1'b1;
        #10 D = 1'b0; EN = 1'b1;
        #10 D = 1'b1; EN = 1'b0;
        #10 D = 1'b0; EN = 1'b0;

        // End simulation
        #10 $finish;
    end
