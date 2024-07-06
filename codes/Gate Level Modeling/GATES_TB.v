`include "GATES.v"
`timescale 1ns/1ps

module tb();
  reg a,b;
  wire y;

  gate dut (a,b,y);

  initial 
    begin
	  $display("a   b   |   y");
	  $display("-------------");
	  repeat (20)
	  begin
	  a = $random;
	  b = $random;
	  #5;
	  $display("%b  %b    |   %b",a,b,y);
	  end
	  #200;
	  $finish;
	end
endmodule
