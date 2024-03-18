// Code your testbench here
// or browse Examples
module register_tb;

    reg clk;
    reg rst;
    reg [7:0] data_in;
    reg write_enable;
    wire [7:0] data_out;

    // Instantiate the register module
    register dut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .write_enable(write_enable),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, register_tb);
end

    initial begin
        clk = 0;
        rst = 1; // Reset initially
        write_enable = 0;
        data_in = 8'h00;

        // Reset
        #10 rst = 0;

        // Write data
        #10 write_enable = 1;
        #10 data_in = 8'h0A;

        // Read data
        #10 write_enable = 0;
        #10;

        // Finish simulation
        #10 $finish;
    end

endmodule
