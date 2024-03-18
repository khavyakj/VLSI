module tb_johnson_counter;

  
    reg clk;
    reg rst;
    wire [3:0] count;
    johnson_counter uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    always #5 clk = ~clk;
    initial begin
        rst = 1;
        #10 rst = 0;
    end
    initial begin
        $dumpfile("johnson_counter_waveform.vcd");
        $dumpvars(0, tb_johnson_counter);
        #1000 $finish;
    end

endmodule
