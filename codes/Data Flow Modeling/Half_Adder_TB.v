`include "Half_Adder.v"
`timescale 1ns/1ps

module Half_Adder_TB;
 reg A,B;
 wire Sum,Carry;

 Half_Adder DUT (A,B,Sum,Carry);

  initial begin
   
   $monitor("TIME = %0dns   A = %0d   B = %0d    Sum = %0d   Carry = %0d",$time,A,B,Sum,Carry);
     
	  A = 0; B = 0;
#10   A = 0; B = 1;
#10   A = 1; B = 0;
#10   A = 1; B = 1;

#10;
$finish;
end
endmodule
