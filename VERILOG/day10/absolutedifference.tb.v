// Code your testbench here
// or browse Examples
module absolute_difference_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in nanoseconds

  // Inputs
  reg [7:0] num1;
  reg [7:0] num2;
  reg clk;

  // Outputs
  wire [7:0] abs_diff;

  // Instantiate the module under test
  absolute_difference uut (
    .num1(num1),
    .num2(num2),
    .abs_diff(abs_diff)
  );

  // Clock generation
  always #((CLK_PERIOD)/2) clk = ~clk;

  // Stimulus
  initial begin
    $dumpfile("absolute_difference_tb.vcd");
    $dumpvars(0, absolute_difference_tb);

    // Initialize inputs
    num1 = 8'd10;
    num2 = 8'd5;
    clk = 0;

    // Apply stimulus
    #20 num1 = 8'd5;
    #20 num2 = 8'd10;
    #20 num1 = 8'd15;
    #20 num2 = 8'd5;

    // Finish simulation
    #20 $finish;
  end

endmodule
