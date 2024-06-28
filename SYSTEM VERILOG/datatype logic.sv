// Code your design here
module logic_data;
  logic [2:0]logic_datatype;
  initial begin
    $display("\ndefault value of logic data typ=%b",logic_datatype);
    logic_datatype=3'b101;
    $display("\n value of logic datatype after initialization =%b",logic_datatype);
    $display("");
  end
endmodule: logic_data
