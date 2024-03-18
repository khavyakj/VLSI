// Code your testbench here
// or browse Examples
module adder_with_function_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in nanoseconds

  // Inputs
  reg [7:0] num1;
  reg [7:0] num2;
  reg clk;

  // Outputs
  wire [7:0] sum;

  // Instantiate the module under test
  adder_with_function uut (
    .num1(num1),
    .num2(num2),
    .sum(sum)
  );

  // Clock generation
  always #((CLK_PERIOD)/2) clk = ~clk;

  // Stimulus
  initial begin
    $dumpfile("adder_with_function_tb.vcd");
    $dumpvars(0, adder_with_function_tb);

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
