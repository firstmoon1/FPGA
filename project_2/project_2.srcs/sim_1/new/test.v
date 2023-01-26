`timescale 1ns / 1ps
module test();
    reg [7:0]in11,in22;
    wire [7:0]res11,res22;
    
    main uut(.in1(in11),.in2(in22),.res1(res11),.res2(res22) );
    
    initial begin
    //in11 = 8'b00011001; // 25
    //in22 = 8'b11011001; // 217
    in11 = 8'h05; // 5
    in22 = 8'hff; // 255
    end

endmodule

/*
a. FFFF+0005 =
b. FFFF-0005 =
c. 0005-FFFF =
*/
