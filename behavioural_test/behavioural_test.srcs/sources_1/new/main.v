`timescale 1ns / 1ps

module main(in1,in2,out1,out2);

input in1,in2;
output out1; // 2 satırda yaptın burda
reg out1;
output reg out2; // tek satırda yaptıgın burda

initial begin
    out1=0;
    out2=0;
end

always @ (in1,in2) 
begin
    out1= (in1 & in2) ^ (in1 | in2);
    out2= ~in2;
end

endmodule
