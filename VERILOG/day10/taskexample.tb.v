// Code your testbench here
// or browse Examples
// Testbench
  initial begin
    // Assign test values to inputs
    input_a = 10;
    input_b = 20;

    // Call the task to calculate the sum
    uut.calculate_sum(input_a, input_b);

    // Display the result
    $display("Sum of %d and %d is %d", input_a, input_b, result_sum);
  end

endmodule
