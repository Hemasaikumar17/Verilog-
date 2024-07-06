module full_Adder(a,b,cin,sum,carry);
  input a,b,cin;
  output reg sum,carry;
  
  always@(*) begin
  if (a == 1'b0 && b == 1'b0 && cin == 1'b0 )
     sum = 1'b0;
	 carry = 1'b0;
   
  if (a == 1'b0 && b == 1'b0 && cin == 1'b1 )
     sum = 1'b1;
	 carry = 1'b0;

  if (a == 1'b0 && b == 1'b1 && cin == 1'b0 )
     sum = 1'b1;
	 carry = 1'b0;

  if (a == 1'b0 && b == 1'b1 && cin == 1'b1 )
	  sum = 1'b0;
	  carry = 1'b1;

  	  
  if (a == 1'b1 && b == 1'b0 && cin == 1'b0 )
     sum = 1'b1;
	 carry = 1'b0;

  	 
  if (a == 1'b1 && b == 1'b0 && cin == 1'b1 )
     sum = 1'b0;
	 carry = 1'b1;
   

  if (a == 1'b1 && b == 1'b1 && cin == 1'b0 )
     sum = 1'b0;
	 carry = 1'b1;

   
  if (a == 1'b1 && b == 1'b1 && cin == 1'b1 )
     sum = 1'b1;
	 carry = 1'b1;
  end
endmodule

