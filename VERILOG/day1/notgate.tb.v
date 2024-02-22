// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module notg_tb;
reg A, B;
wire Y;
notg notgate(.A(A),.B(B),.Y(Y));
initial begin
  $dumpfile("notg.vcd");
  $dumpvars(0,notg_tb);  
end
initial begin
  A=1'b0;B=1'b0;
  #10 A=1'b0;B= 1'b1;
  #10 A=1'b1;B= 1'b0;
  #10 A=1'b1;B=1'b1;
  #10
  $finish;
end
always @(Y)
  $monitor( "time=%0t \tINPUT VALUES: \t A=%b B=%b \t output value Y =%b",$time,A,B,Y);
endmodule
