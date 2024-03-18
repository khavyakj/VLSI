// Code your design here
module task_example;

  // Define a task to calculate the sum of two numbers
  task calculate_sum;
    input [7:0] a, b;
    output reg [15:0] sum;
    begin
      sum = a + b;
    end
  endtask
