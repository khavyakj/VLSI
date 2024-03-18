
module odd_even_checker (
    input wire [7:0] number,
    output reg is_even
);


function integer is_even_func;
    input [7:0] num;
    begin
        is_even_func = (num % 2 == 0) ? 1 : 0; 
    end
endfunction


always @(*) begin
    is_even = is_even_func(number);
end

endmodule
