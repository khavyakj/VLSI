module factorial (
    input logic [31:0] n,
    output logic [31:0] result
);

    // Local variable to hold the result
    logic [31:0] fact;
    
    // Initialize result
    assign result = fact;
    
    // Calculate factorial iteratively
    always_comb begin
        fact = 1;
        for (int i = 2; i <= n; i++) begin
            fact = fact * i;
        end
    end
    
endmodule
