// Code your testbench here
// or browse Examples
initial begin

// Initialize Inputs
        d = 1;
        s0 = 0;
        s1 = 0;
// Wait 100 ns for global reset to finish
       #100;

// Add stimulus here
    #100;d = 1;s0 = 1;s1 = 0;
    #100;d = 1;s0 = 0;s1 = 1;
    #100;d = 1;s0 = 1;s1 = 1;
end

