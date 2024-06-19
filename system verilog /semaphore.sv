// Code your testbench here
// or browse Examples
module semaphore_example;
  
  semaphore sem=new(3);
  
  task process_A();
    sem.get(3);
    $display("process A is started");
    $display("process A is completed");
    sem.put(8);
  endtask
  
  task process_B();
    sem.get(8);
    $display("process b is started");
    $display("process b is completed");
    sem.put(5);
  endtask
  
  initial begin
    fork
      process_A();
      process_B();
    join 
  end
endmodule
    
