// Code your design here
module mux4to1 (y,i0,i1,i2,i3,s1,s0);
 input i0,i1,i2,i3;
  input s1,s0;
  output y;
  wire s1n,s0n;
  wire y0,y1,y2,y3;
  not(s1n,s1);
  not(s0n,s0);
  and(y0,i0,s1n,s0n);
  and(y1,i1,s1n,s0);
  and(y2,i2,s1,s0n);
  and(y3,i3,s1,s0);
  or(y,y0,y1,y2,y3);
endmodule
