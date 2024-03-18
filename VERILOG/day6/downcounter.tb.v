// Code your testbench here
// or browse Examples
module tb_down_counter;

    // Inputs
    reg clk;
    reg rst;

    // Outputs
    wire [3:0] count;

    // Instantiate the down_counter module
    down_counter uut (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Reset generation
    initial begin
        rst = 1;
        #10 rst = 0;
    end

    // Dump the waveform into a VCD file
    initial begin
        $dumpfile("down_counter_waveform.vcd");
        $dumpvars(0, tb_down_counter);
        #1000 $finish;
    end

endmodule
