// Code your testbench here
// or browse Examples
module tb_shift_operator;

    reg [7:0] test_data;
    reg [2:0] test_shift_amount;
    wire [7:0] result;

    // Instantiate the shift operator module
    shift_operator shift_inst(
        .data(test_data),
        .shift_amount(test_shift_amount),
        .shifted_data(result)
    );

    // Stimulus generation
    initial begin
        $dumpfile("shift_operator_tb.vcd");
        $dumpvars(0, tb_shift_operator);

        // Test shifting left
        test_data = 8'hFF; // 1111_1111
        test_shift_amount = 3; // Shift left by 3
        #10;

        // Test shifting right
        test_data = 8'h0F; // 0000_1111
        test_shift_amount = -2; // Shift right by 2
        #10;

        $finish;
    end
endmodule
