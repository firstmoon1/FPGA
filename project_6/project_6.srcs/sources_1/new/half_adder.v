`timescale 1ns / 1ps

module half_adder(s,co,x,y);
    input x,y;
    output s,co;
    assign co=x&y;
    assign s=x^y;

endmodule
