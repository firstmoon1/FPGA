`timescale 1ns / 1ps

module mux1(i1,i2,s1,o1);
input s1;
input [7:0]i1; // cünkü 8 bitlik deger veriyoruz soldan multiplexer'a
input [7:0]i2;
output [7:0]o1;
assign o1= s1 ? i1 : i2; // ayný imiþ hocaya göre o1 = (s1 & i1) | (~s1 & i2);
endmodule
