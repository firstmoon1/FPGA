`timescale 1ns / 1ps


module final(x,y,s );

input [3:0]x,y;
output [4:0]s;
wire c1,c2,c3;

half_adder u1( s[0],c1,x[0],y[0] );
full_adder u2( s[1],c2,x[1],y[1],c1 );
full_adder u3( s[2],c3,x[2],y[2],c2 );
full_adder u4( s[3],s[4],x[3],y[3],c3 );

endmodule
