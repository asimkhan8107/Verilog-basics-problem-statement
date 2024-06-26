module tb_majority_input ();
    reg a, b, c;  
    wire y;
    
    majority_input dut(.a(a), .b(b), .c(c), .y(y));
    
    initial
    begin
            a = 0; b = 0; c = 0;
        #10 a = 0; b = 0; c =1;
        #10 a = 0; b = 1; c =0;
        #10 a = 0; b = 1; c =1;
        #10 a = 1; b = 0; c =0;
        #10 a = 1; b = 0; c =1;
        #10 a = 1; b = 1; c =0;
        #10 a = 1; b = 1; c =1;
    end
    
    initial
    begin
        $monitor("A = %0b, B = %0b, C = %0b, y = %0b",a,b,c,y);
        
        #100;
        $finish();
    end
endmodule
