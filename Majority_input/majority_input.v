// Write a verilog code for 3-input majority function

module majority_input(
    input a, b, c,    // input 
    output y      // output
    );
    
    assign y = (a & b) | (b & c) | (a & c);
    
endmodule : majority_input
