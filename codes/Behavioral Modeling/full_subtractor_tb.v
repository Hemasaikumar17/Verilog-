`include "full_subtractor.v"
`timescale 1ns/1ps

module tb;
  reg A,B,Bin;
  wire D,Bo;

  full_subtractor dut (.A(A),.B(B),.Bin(Bin),.D(D),.Bo(Bo));

    initial 
    begin
    $monitor("TIME = %g       A = %0b    B = %0b    Bin = %0b    | D = %0b    Bo = %0b",$time,A,B,Bin,D,Bo);

    A   = 1'b0;
	B   = 1'b0;
	Bin = 1'b0;

#5  A   = 1'b0;
	B   = 1'b0;
	Bin = 1'b1;
	
#5  A   = 1'b0;
	B   = 1'b1;
	Bin = 1'b0;

#5  A   = 1'b0;
	B   = 1'b1;
	Bin = 1'b1;

#5  A   = 1'b1;
	B   = 1'b0;
	Bin = 1'b0;
	
#5  A   = 1'b1;
	B   = 1'b0;
	Bin = 1'b1;

#5  A   = 1'b1;
	B   = 1'b1;
	Bin = 1'b0;

#5  A   = 1'b1;
	B   = 1'b1;
	Bin = 1'b1;
	
#5  A   = 1'bz;
	B   = 1'bx;
	Bin = 1'b0;
	#40;
	$finish;
	end
endmodule
