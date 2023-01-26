`timescale 1ns / 1ps


module main_tb; 
  // Inputs
  reg clk,enable;
  reg [3:0] parallel_in;
  // Outputs
  wire serial_out;

  // Instantiate the module
  main uut (
    .clk(clk),.enable(enable),.parallel_in(parallel_in),.serial_out(serial_out)
    );

  // Initialize inputs
  initial begin
    clk = 0;
    enable = 1;
    parallel_in = 4'b0000;
  end

  // Clock generator
  always begin
    #5 clk = ~clk;
  end
  // Test case 1
  initial begin
    // Load parallel input
    parallel_in = 4'hA;
    #10;
    // Shift right 3 times
    enable = 0;
    #10;
    #10;
    #10;
    // Load parallel input
    parallel_in = 4'b1001;
    #10;
    // Shift right 3 times
    enable = 0;
    #10;
    #10;
    #10;
    // Stop simulation
    $finish;
  end

endmodule