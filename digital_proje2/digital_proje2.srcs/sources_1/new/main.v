`timescale 1ns / 1ps
// pwm generator code.
module main(clk,out,left,right,forward,backward);
input clk; // clock.
input [7:0] left,right,forward,backward; //8 bit input signals from joystick
output reg [3:0] out; // signal outputs to stepmotor.
integer count1; // 32 bit integer value. 
initial begin
count1=0; // The values of variables initially.
out=0;
end
always @ (posedge clk) begin
    count1 = count1+1; // counter blog
    if((left==0) && (right==0) && (forward==0) && (backward==0)) out=0;
    else begin 
    if ((count1 == left) && (right==0)) out[0] = ~out[0];  
    if ((count1 == right) && (left==0)) out[1] = ~out[1]; 
    if ((count1 == forward) && (backward==0)) out[2] = ~out[2];  
    if ((count1 == backward) && (forward==0)) out[3] = ~out[3]; 
    end
    if(count1 > 255 ) count1=0; // max number of counter is 255. 
end
endmodule
 