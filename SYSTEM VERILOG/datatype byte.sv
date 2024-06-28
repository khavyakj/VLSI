// Code your design here
module datatype_byte;
  byte data_byte;
  initial begin
  $display("before initialization,default value of bytr datatype =%0b",data_byte);
  data_byte = 8'b11011010;
    $display("\n after initialization value of byte datatype in binary format =%0b =%0b",data_byte);
    $display("\n after initialization value of byte datatype in decimal format and in signed 2,s complement form =%0d\n",data_byte );
  end
endmodule
