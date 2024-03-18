
module fsm_binary_counter_tb;
parameter CLK_PERIOD = 10;
reg clk;
reg reset;
wire [1:0] count_out;
fsm_binary_counter dut(
    .clk(clk),
    .reset(reset),
    .count_out(count_out)
);

always #((CLK_PERIOD)/2) clk = ~clk;
initial begin
    
    $dumpfile("fsm_binary_counter_tb.vcd");
    $dumpvars(0, fsm_binary_counter_tb);
    reset = 1;
    #20;
    reset = 0;
    #100;
    $finish;
end

endmodule
