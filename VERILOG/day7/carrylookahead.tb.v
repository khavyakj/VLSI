// Code your testbench here
// or browse Examples
module cl_adder_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg [3:0] A, B; // 4-bit inputs A and B
    reg cin;        // Carry-in
    wire [3:0] sum; // 4-bit output sum
    wire cout;      // Carry-out

    // Instantiate the Carry Look-Ahead Adder module
    cl_adder dut (
        .A(A),
        .B(B),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Clock generation
    reg clk = 0; // Clock signal
    always #((CLK_PERIOD/2)) clk = ~clk;

    // Stimulus generation
    initial begin
        // Apply inputs
        A = 4'b0000; B = 4'b0000; cin = 0;
        #10;
        A = 4'b0101; B = 4'b1100; cin = 0;
        #10;
        A = 4'b1111; B = 4'b0001; cin = 1;
        #10;
        $stop; // Stop simulation
    end

    // Dumping waveform to VCD file
    initial begin
        $dumpfile("cl_adder_waveform.vcd");
        $dumpvars(0, cl_adder_tb);
        #20; // Wait for 20 time units before dumping
    end

endmodule
