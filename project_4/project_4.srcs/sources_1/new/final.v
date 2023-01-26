`timescale 1ns / 1ps

// 8x1 lik multiplexer iþi yapýyoruz , xyz alttan secme ,soldan 8 input her biri 8 bit.
module final(in1,in2,in3,in4,in5,in6,in7,in8,x,y,z,fin);

input [7:0] in1,in2,in3,in4,in5,in6,in7,in8;
input x,y,z;
output [7:0] fin;
wire [7:0] w1,w2,w3,w4,w5,w6;

mux1 mu1 (in1,in2,x,w1);
mux1 mu2 (in3,in4,x,w2);
mux1 mu3 (in5,in6,x,w3);
mux1 mu4 (in7,in8,x,w4);

mux1 mu5 (w1,w2,y,w5);
mux1 mu6 (w3,w4,y,w6);

mux1 mu7 (w5,w6,z,fin);

endmodule
