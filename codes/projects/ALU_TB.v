`include "ALU.v"
`timescale 1ns/1ps

module tb;
  reg [3:0]a,b;
  reg [7:0] sel;
  reg clk;
  wire [3:0]result;

  ALU dut (a,b,sel,result);
  
  initial begin
    $monitor("TIME = %g  |  sel = %0d  |  a = %0d  |  b = %0d  |  result = %0d", $time,sel,a,b,result);

	  sel = 8'b0000_0000;
	  a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0001;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0010;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0011;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0100;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0101;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0110;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_0111;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_1000;
      a   = 3'b100;
	  b   = 3'b010;
     
  #5  sel = 8'b0000_1001;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_1010;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_1011;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_1100;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_1101;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0000_1110;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0000;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0001;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0010;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0011;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0100;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0101;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0110;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_0111;
      a   = 3'b100;
	  b   = 3'b010;

  #5  sel = 8'b0001_1000;
      a   = 3'b100;
	  b   = 3'b010;
  $finish;
  end
	 endmodule
