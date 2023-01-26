`timescale 1ns / 1ps
module test();

reg [7:0]in1,in2,in3;
wire [7:0]out1;
main uut(
.i1(in1),
.i2(in2),
.i3(in3),
.o1(out1)
);

initial begin
// #10;  // delay demek ,ms cinsinden, 10ms bekle 
in1=8'hA5; // 165
in2=8'hCF; // 207
in3=8'hF1; // 241

end
endmodule
// bize a5 en kücük sayý diye out1 'e atayacak