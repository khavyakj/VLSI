// Code your design here
module dtatatype_integer;
  integer integer_data;
  initial begin 
    $display("\n the default value of integer datatype is =%0b",integer_data);
    integer_data = 32'b101x_111x_x111_xx01;
    $display("\n after initialization, the value of integer datatype is =%0b", integer_data);
  end
endmodule
