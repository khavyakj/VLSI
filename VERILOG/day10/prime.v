module prime_checker(
    input wire [7:0] num,
    output reg is_prime
);

    reg [7:0] i;

    always @* begin
        if (num <= 1)
            is_prime = 0; 
        else if (num == 2)
            is_prime = 1; 
        else begin
            is_prime = 1; 
            for (i = 2; i <= num/2; i = i + 1) begin
                if (num % i == 0) begin
                    is_prime = 0; 
                    break;
                end
            end
        end
    end

endmodule
