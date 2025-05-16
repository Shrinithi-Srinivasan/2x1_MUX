`timescale 1ns/1ps
module mux_2x1 (input sel,input a,input b,output reg y);
  assign y = ((a & (~sel))|(b & sel));
endmodule
