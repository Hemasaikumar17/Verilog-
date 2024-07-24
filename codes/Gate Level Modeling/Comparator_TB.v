`include "Comparator.v"
`timescale 1ns/1ps

module Comparator_TB;
 reg A,B;
 wire X,Y,Z;

 Comparator DUT (A,B,X,Y,Z);

 initial begin

 $monitor("TIME = %0dns   A = %0d   B = %0d   X = %0d   Y = %0d   Z = %0d",$time,A,B,X,Y,Z);

     A = 0; B = 0;
#10  A = 1; B = 0;
#10  A = 0; B = 1;
#10  A = 1; B = 1;

#10;
 $finish;
 end
endmodule
 
 
