module testbench;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg clk = 0;          // Clock signal
    reg reset = 1;        // Reset signal
    reg shift_en = 0;     // Shift enable signal
    reg data_in = 0;      // Input data signal
    wire [7:0] data_out;  // Output data signal

    // Instantiate the linear shift register module
    linear_shift_register dut (
        .clk(clk),
        .reset(reset),
        .shift_en(shift_en),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #((CLK_PERIOD/2)) clk = ~clk;

    // Stimulus generation
    initial begin
        // Apply reset
        reset = 1;
        #20;
        reset = 0;

        // Apply input data and shift enable
        data_in = 1;
        shift_en = 1;
        #100;
        data_in = 0;
        #100;
        data_in = 1;
        #100;
        shift_en = 0;
        #100;
        $stop; // Stop simulation
    end

    // Dumping waveform to VCD file
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, testbench);
        #200; // Wait for 200 time units before dumping
    end

endmodule
