// Code your design here
module datatype_bit;
  bit single_bit;
  bit [3:0]multi_bit;
  initial begin
    $display("\ndefaut value of single bit data is =%0b",single_bit);
    $display("\ndefault value of multi bit data=%0b",multi_bit);
    single_bit =1;
    multi_bit=4'b1100;
    $display("/n after initialization of single bit data =%0b",single_bit);
    $display("\nafter initialization of multibit data =%0b",multi_bit);
    $display("\n after assigning x and z,value of four bit data =%0b",multi_bit);
  end
endmodule
