// Code your testbench here
// or browse Examples
module mux4to1_tb;
  wire y ;
  reg s0,s1,i0,i1,i2,i3;
  mux4to1 m1(y,i0,i1,i2,i3,s1,s0);
  initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0,mux4to1_tb);
  end
  initial begin
    i0= 1'b1;i1=1'b1; i2=1'b0; i3=1'b0;
    
   #12 s0=1'b0;s1=1'b0;
    #12 s0=1'b0;s1=1'b1;
    
      #45$finish;
  end
    initial begin
    $monitor("t =%t  s0=%0d s1=%0d y=%0d",$time,s0,s1,y);
  end
    endmodule
  
