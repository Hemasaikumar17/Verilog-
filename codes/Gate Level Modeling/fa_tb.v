`include "fa.v"
`timescale 1ns/1ps

module tb;
 reg a,b,c;
 wire sum,carry;

 fa dut (a,b,c,sum,carry);

 initial begin
   $monitor("time = %g  |  a  =  %b  |  b = %b  |  c = %b  |  sum = %b  |  carry = %b",$time,a,b,c,sum,carry);
   $display("----------------------------------------------------------------------------------------------");
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;

 #5 a = 1'b0;   
    b = 1'b0;
    c = 1'b1;

 #5 a = 1'b0;	
    b = 1'b1;
    c = 1'b0;

 #5 a = 1'b0;	
    b = 1'b1;
    c = 1'b1;

 #5 a = 1'b1;	
    b = 1'b0;
    c = 1'b0;

 #5 a = 1'b1;	
    b = 1'b0;
    c = 1'b1;

 #5 a = 1'b1;	
    b = 1'b1;
    c = 1'b0;

 #5 a = 1'b1;	
    b = 1'b1;
    c = 1'b1;
	#60
$finish;
end
endmodule

