
// Code your testbench here
// or browse Examples
module shift_operator_tb;

// Parameters
parameter CLK_PERIOD = 10; // Clock period in ns

// Signals
reg clk;
reg [3:0] data_in;
reg [1:0] shift_amount;
wire [3:0] data_out;

// Instantiate the shift operator module
shift_operator dut(
    .data_in(data_in),
    .shift_amount(shift_amount),
    .data_out(data_out)
);

// Clock generation
always #((CLK_PERIOD)/2) clk = ~clk;

// Initial stimulus
initial begin
    // Open dumpfile
    $dumpfile("shift_operator_tb.vcd");
    $dumpvars(0, shift_operator_tb);

    // Set inputs
    data_in = 4'b1101;
    shift_amount = 2'b00;

    #20;

    shift_amount = 2'b01;
    #20;

    shift_amount = 2'b10;
    #20;

    shift_amount = 2'b11;
    #20;

    // End simulation
    $finish;
end

endmodule
