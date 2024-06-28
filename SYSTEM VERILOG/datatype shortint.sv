// Code your design here
module shortint_data;
  shortint shortint_data;
  initial begin
    $display("\n before initialization, the default value of shortint is =%0b",shortint_data);
    shortint_data= 16'b110000110101;
    $display("\n after initialization, the value of shortint=%0b",shortint_data);
  end
endmodule
