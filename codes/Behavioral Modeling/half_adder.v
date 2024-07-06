module ha (a,b,sum,carry);
  input a,b;
  output reg sum,carry;

  always@(*)
  begin
    if (a == 1'd0 && b == 1'd0)
	begin
	   sum  = 1'd0;
	   carry = 1'd0;
	end   
	else if (a == 1'd0 && b == 1'd1)
	begin
	   sum = 1'd1;
	   carry = 1'd0;
	end   
	else if (a == 1'd1 && b == 1'd0)
    begin	
	   sum = 1'd1;
	   carry = 1'd0;
	end   
	else if (a == 1'd1 && b == 1'd1)begin
	   sum = 1'd0;
	   carry = 1'd1;
	end   
	else
	   $display("INAVALID INPUT");
	

	/*case statement

	case ({a,b })
	     2'b00  : 
		 begin
		 sum = 1'd0 ;
		 carry = 1'd0;
		 end
		 2'b01  :
		 begin
		 sum = 1'd1;
		 carry = 1'd0;
		 end
		 2'b10  :
		 begin
		 sum = 1'd1 ;
		 carry = 1'd0;
		 end
		 2'b11  :
		 begin
		 sum = 1'd0 ;
		 carry = 1'd1;
		 end
    endcase*/


	
    
  end
endmodule  
