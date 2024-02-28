// Code your testbench here
// or browse Examples
module testbench;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;

    // Outputs
    wire [3:0] AND_result;
    wire [3:0] OR_result;
    wire [3:0] XOR_result;
    wire [3:0] NOT_A;
    wire [3:0] NOT_B;

    // Instantiate the module
    bitwise_operators UUT(
        .A(A),
        .B(B),
        .AND_result(AND_result),
        .OR_result(OR_result),
        .XOR_result(XOR_result),
        .NOT_A(NOT_A),
        .NOT_B(NOT_B)
    );

    initial begin
        // Initialize inputs
        A = 4'b0000;
        B = 4'b1111;

        // Change inputs
        #10 A = 4'b1010;
        #10 B = 4'b0101;

        // End simulation
        #10 $finish;
    end

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, testbench);
        // Rest of your testbench code
    end

endmodule
