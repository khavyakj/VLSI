module testbench;

    // Inputs
    reg A;
    reg B;

    // Outputs
    wire AND_result;
    wire OR_result;
    wire NOT_A;
    wire NOT_B;

    // Instantiate the module
    logical_operators UUT(
        .A(A),
        .B(B),
        .AND_result(AND_result),
        .OR_result(OR_result),
        .NOT_A(NOT_A),
        .NOT_B(NOT_B)
    );
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, testbench);
    // Rest of your testbench code
end

    initial begin
        // Initialize inputs
        A = 0;
        B = 0;

        // Change inputs
        #10 A = 1;
        #10 B = 1;
        #10 B = 0;
        #10 A = 0;

        // End simulation
        #10 $finish;
    end

endmodule
