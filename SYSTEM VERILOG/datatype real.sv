// Code your design here
module datatype_real;
  real real_data;
  initial begin
    $display("\nbefore initialization default value of real =%0d",real_data);
    real_data =4.43;
     $display("\nafter initialization default value of real =%0f",real_data);
  end
endmodule
