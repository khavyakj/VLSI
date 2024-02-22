// Code your testbench here
// or browse Examples
module xorg_tb;
reg A, B;
wire Y;
xorg xorgate(.A(A),.B(B),.Y(Y));
initial begin
  $dumpfile("xorg.vcd");
  $dumpvars(0,xorg_tb);  
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
