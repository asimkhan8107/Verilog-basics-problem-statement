// Write a verilog code to detect N-bit prime number

module prime_number_detector #(parameter N = 4)(
    input [N-1:0] in,
    output detect
    );
    
    // using coditional (ternary operator)
    assign detect = in[3] ? ( in[0] & (in[1] ^ in[2])) : ( in[0] | (~in[2] & in[1]));
endmodule
