// Code your design here
module palindrome_checker (
    input [7:0] data_in,
    output reg is_palindrome
);

    reg [7:0] data_reversed;

    always @* begin
        // Reverse the input data
        for (int i = 0; i < 8; i = i + 1) begin
            data_reversed[i] = data_in[7 - i];
        end

        // Check if the reversed data matches the original data
        is_palindrome = (data_in == data_reversed);
    end

endmodule
