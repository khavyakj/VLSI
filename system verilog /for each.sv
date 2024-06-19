module for_each;
  int i;
  int array[5:0];
  initial begin
    array={12,23,34,45,56,87};
    foreach (array[i]) begin
      $display("the array is[%d]=%d",i,array[i]);
    end
  end
endmodule
