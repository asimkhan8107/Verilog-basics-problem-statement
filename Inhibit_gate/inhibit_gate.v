// Write a verilog code for 2 input variable inhibit gate

// Inhibit gate -> 
//                Inhibit gate is also known as 'But - Not' i.e., a but not b.

 
module inhibit_gate(
    input a, b,  
    output y
    );
    
    assign y = a & (~b);
    
endmodule
