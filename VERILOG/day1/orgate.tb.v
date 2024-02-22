// Code your testbench here
// or browse Examples
module or_gate_tb;
reg a,b;
wire y;
or_gate_s uut(a,b,y);
  initial begin
    $dumpfile("or_gate_s.vcd");
    $dumpvars(1,or_gate_tb);
  end
    
initial begin
a = 0; b = 0;
#10
b = 0; b = 1;
#10
a = 1; b = 0;
#10
b = 1; b = 1;
#10
$finish();
  $monitor("%t a=%d b=%d y=%d",$time, a,b,y);
end
                
endmodule
