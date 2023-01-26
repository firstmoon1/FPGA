`timescale 1ns / 1ps
// DATA FLOW
module first(in1,in2,out1,out2);
    input in1,in2;
    output out1,out2;
    wire wire1;
    assign wire1 = in1 | in2;
    assign out2 = ~wire1;
    // yada böyle yap, assign out2= ~(in1 | in2);  
    assign out1 = wire1 & in1;
 
endmodule

//STRUCTURAL
/*
module first(in1,in2,out1,out2);
	input in1,in2;
    output out1,out2;
    wire wire1;
    or gate1(wire1,in1,in2);
    not gate2(out2,wire1);
    and gate3(out1,wire1,in1);
endmodule
*/