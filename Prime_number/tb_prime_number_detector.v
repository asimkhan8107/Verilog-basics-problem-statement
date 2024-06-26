module tb_prime_number_detector #(parameter N = 4);

    reg [N-1:0] in;
    wire detect;
    
    prime_number_detector dut (.in(in), .detect(detect));
    
    initial
    begin
        in = 0;
        #10 in = 1;
        #10 in = 2;
        #10 in = 3;
        #10 in = 4;
        #10 in = 5;
        #10 in = 6;
        #10 in = 7;
        #10 in = 8;
        #10 in = 9;
        #10 in = 10;
        #10 in = 11;
        #10 in = 12;
        #10 in = 13;
        #10 in = 14;
        #10 in = 15;
    end
    
    initial
    begin
        $monitor("number = %0d, prime = %0b", in, detect);
        #160 $finish();
    end
        
endmodule
