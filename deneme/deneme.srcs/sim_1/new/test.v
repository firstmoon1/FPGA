`timescale 1ns / 1ps

/*
module test();
     
    reg [7:0] x;
    wire [7:0] y,z;
    sys1 uut(.x(x),.y(y),.z(z));
    
    initial begin
    x=8'b00011000; #10;
    x=8'd96; #10;
    x=8'h7C; #10;
    $stop;
    end
    
endmodule
*/



/*
// overflow_operations_tb
module test;
    reg [15:0] in1,in2;
    wire [15:0] out1,out2,out3;
    
    sys1 UUT(.in1(in1), .in2(in2), .out1(out1), .out2(out2), .out3(out3));
    
    initial begin
    in1=4'hFFFF;
    in2=4'h0005;
    #100 ;
    end 
endmodule
*/




/*
// concatenation_tb
module test; 
    reg [7:0] in1;
    reg [7:0] in2;
    wire [5:0] var;
    
    sys1 UUT(.num1(in1), .num2(in2), .out(var));
    
    initial begin
    in1=8'b10110110;
    in2=8'b01101010;
    end 
endmodule
*/




//Odd_Even_Number_tb
module test;
    reg [3:0] x;
    wire y1,y2;
    sys1 UUT(.x(x), .y1(y1), .y2(y2));
    initial begin
    x=4'b1010;
    end 
endmodule