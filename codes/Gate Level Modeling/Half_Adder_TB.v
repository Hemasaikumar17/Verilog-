`include "ha.v"
`timescale 1ns/1ps

module Half_Adder_TB;
  reg a,b;
  wire sum,carry;

  ha dut (a,b,sum,carry);

  initial begin
       $monitor("Time = %g   a = %d     b = %d  |  sum = %d   carry =%d",$time,a,b,sum,carry);
	   a = 1'b0;
	   b = 1'b0;

  #5   a = 1'b0;
       b = 1'b1;
 
  #5   a = 1'b1;
       b = 1'b0;

  #5   a = 1'b1;
       b = 1'b1;
	   #30;
	   $finish;
	   
	   end
	   endmodule
