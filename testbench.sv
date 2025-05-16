`timescale 1ns/1ps
module mux_2x1_tb;
    reg a, b, sel;     
    wire y;            
    mux_2x1 uut (.sel(sel),.a(a),.b(b),.y(y));
    initial begin
        $dumpfile("mux_2x1.vcd");
        $dumpvars(1);
        a = 0; b = 0; sel = 0; #10;
        a = 1; b = 0; sel = 0; #10;
        a = 0; b = 0; sel = 1; #10;
        a = 0; b = 1; sel = 1; #10;
        $finish;
    end
endmodule
