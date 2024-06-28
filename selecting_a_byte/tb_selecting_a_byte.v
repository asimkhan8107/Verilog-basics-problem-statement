module tb_selecting_a_byte();
    reg [7:0] a, b, c;
    reg sel_a, sel_b, sel_c ;
    wire [7:0] z;
    
    selecting_a_byte dut(.a(a), .b(b), .c(c), .sel_a(sel_a), .sel_b(sel_b), .sel_c(sel_c), .z(z));
    
    initial
    begin
            a = 8'haa; b = 8'hbb; c = 8'hcc; sel_a = 1'b1; sel_b = 1'b0; sel_c = 1'b0;
        #10 a = 8'haa; b = 8'hbb; c = 8'hcc; sel_a = 1'b0; sel_b = 1'b1; sel_c = 1'b0;
        #10 a = 8'haa; b = 8'hbb; c = 8'hcc; sel_a = 1'b0; sel_b = 1'b0; sel_c = 1'b1;
        #10 $finish();
        $monitor("a = %0h b = %0h c = %0h, sel_a = %0b sel_b = %0b sel_c = %0c z = %0h", a, b, c, sel_a, sel_b, sel_c, z);
    end
    

endmodule
