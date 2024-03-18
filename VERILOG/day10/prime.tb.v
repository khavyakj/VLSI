module tb_prime_checker;

    reg [7:0] test_num;

    
    prime_checker prime_checker_inst(
        .num(test_num),
        .is_prime()
    );

 
    initial begin
        $dumpfile("tb_prime_checker.vcd");
        $dumpvars(0, tb_prime_checker);

       
        test_num = 2;
        #10;

        test_num = 3;
        #10;

        test_num = 4;
        #10;

        test_num = 5;
        #10;

        test_num = 6;
        #10;

        test_num = 7;
        #1000;

        $finish;
    end

endmodule
