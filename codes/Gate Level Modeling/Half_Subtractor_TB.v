`include "hs.v"
`timescale 1ns/1ps

module Half_Subtractor_TB;
 reg a,b;
 wire borrow,diff;

 hs dut (a,b,borrow,diff);

    initial 
    begin
    $monitor("Time = %g    a = %b    b = %b   |   borrow = %b   diff = %b ",$time,a,b,borrow,diff);
    
    a = 1'b0;
    b = 1'b0;

 #5 a = 1'b0;
    b = 1'b1;

 #5 a = 1'b1;	
    b = 1'b0;

 #5 a = 1'b1;	
    b = 1'b1;
	#30;
    $finish;
	end
	endmodule


