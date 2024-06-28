// Writing a verilog code for selecting a byte for 3 input variable
module selecting_a_byte(
    input [7:0] a, b, c,   // [7:0] = 8 bit = 1 byte
    input sel_a, sel_b, sel_c,
    output [7:0] z
    );
    
    // logic -> using conditional operator
    
    assign z = sel_a ? a: (sel_b ? b : (sel_c ? c : 8'b0));
endmodule
