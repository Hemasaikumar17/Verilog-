`include"full_adder.v"
`timescale 1ns/1ps

module tb();
  reg a,b,cin;
  wire sum,carry;

  full_Adder dut (a,b,cin,sum,carry);

    initial 
    begin
    $monitor("a = %d   b = %d   cin = %d  |  sum = %d   carry = %d",a,b,cin,sum,carry);

    a   = 1'b0;
    b   = 1'b0;
    cin = 1'b0;

#5  a   = 1'b0;
    b   = 1'b0;
    cin = 1'b1;

#5  a   = 1'b0;
    b   = 1'b1;
    cin = 1'b0;
  	
#5  a   = 1'b0;
    b   = 1'b1;
    cin = 1'b1;

#5  a   = 1'b1;
    b   = 1'b0;
    cin = 1'b0;

#5  a   = 1'b1;
    b   = 1'b0;
	cin = 1'b1;

#5  a   = 1'b1;
    b   = 1'b1;
	cin = 1'b0;

#5  a   = 1'b1;
    b   = 1'b1;
	cin = 1'b1;

#60;
$finish;
end
endmodule


