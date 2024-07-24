`include "2-Bit_Comparator.v"
`timescale 1ns/1ps

module tb;
 reg A0,A1,B1,B0;
 wire X,Y,Z;

 Bit_Comparator DUT (A0,A1,B0,B1,X,Y,Z);

 initial begin
  $monitor("TIME = %0dns   A0 = %0d  A1 = %0d   B0 = %0d   B1 = %0d   X = %0d   Y = %0d   Z = %0d",$time,A0,A1,B0,B1,X,Y,Z);

     A0 = 0; A1 = 0; B0 = 0; B1 = 0;
#10  A0 = 0; A1 = 0; B0 = 0; B1 = 1;
#10  A0 = 0; A1 = 0; B0 = 1; B1 = 0;
#10  A0 = 0; A1 = 0; B0 = 1; B1 = 1;
#10  A0 = 0; A1 = 1; B0 = 0; B1 = 0;
#10  A0 = 0; A1 = 1; B0 = 0; B1 = 1;
#10  A0 = 0; A1 = 1; B0 = 1; B1 = 0;
#10  A0 = 0; A1 = 1; B0 = 1; B1 = 1;
#10  A0 = 1; A1 = 0; B0 = 0; B1 = 0;
#10  A0 = 1; A1 = 0; B0 = 0; B1 = 1;
#10  A0 = 1; A1 = 0; B0 = 1; B1 = 0;
#10  A0 = 1; A1 = 0; B0 = 1; B1 = 1;
#10  A0 = 1; A1 = 1; B0 = 0; B1 = 0;
#10  A0 = 1; A1 = 1; B0 = 0; B1 = 1;
#10  A0 = 1; A1 = 1; B0 = 1; B1 = 0;
#10  A0 = 1; A1 = 1; B0 = 1; B1 = 1;

#10;
$finish;
end
endmodule
