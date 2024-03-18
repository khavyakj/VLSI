// Code your testbench here
// or browse Examples
module palindrome_checker_tb;

    reg [7:0] data_in;
    wire is_palindrome;

    // Instantiate the palindrome_checker module
    palindrome_checker dut (
        .data_in(data_in),
        .is_palindrome(is_palindrome)
    );

    initial begin
        data_in = 8'b11011011; // Palindrome input
        #10;

        data_in = 8'b11010011; // Non-palindrome input
        #10;

        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, palindrome_checker_tb);
    end

endmodule
