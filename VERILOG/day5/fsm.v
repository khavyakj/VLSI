
module fsm_binary_counter (
    input wire clk,    
    input wire reset, 
    output reg [1:0] count_out 
);
parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;
reg [1:0] state_reg;
always @(*) begin
    count_out = state_reg;
end
always @(posedge clk or posedge reset) begin
    if (reset) begin
        state_reg <= S0; 
    end else begin
        case (state_reg)
            S0: state_reg <= S1;
            S1: state_reg <= S2; 
            S2: state_reg <= S3; 
            S3: state_reg <= S0; 
            default: state_reg <= S0; 
        endcase
    end
end

endmodule
