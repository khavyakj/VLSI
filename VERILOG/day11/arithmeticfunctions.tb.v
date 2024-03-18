// Code your testbench here
// or browse Examples
module arithmetic_operations_tb;

  // Parameters
  parameter CLK_PERIOD = 10; // Clock period in nanoseconds

  // Inputs
  reg [7:0] a;
  reg [7:0] b;
  reg clk;

  // Outputs
  wire [7:0] sum;
  wire [7:0] difference;
  wire [7:0] product;
  wire [7:0] quotient;

  // Instantiate the module under test
  arithmetic_operations uut (
    .a(a),
    .b(b),
    .sum(sum),
    .difference(difference),
    .product(product),
    .quotient(quotient)
  );

  // Clock generation
  always #((CLK_PERIOD)/2) clk = ~clk;

  // Stimulus
  initial begin
    $dumpfile("arithmetic_operations_tb.vcd");
    $dumpvars(0, arithmetic_operations_tb);

    // Initialize inputs
    a = 8'd10;
    b = 8'd5;
    clk = 0;

    // Apply stimulus
    #20 a = 8'd5;
    #20 b = 8'd10;
    #20 a = 8'd15;
    #20 b = 8'd5;

    // Finish simulation
    #20 $finish;
  end

endmodule
