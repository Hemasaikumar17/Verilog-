module SR_FlipFlop(S,R,clk,Q);
   input S,R;
   input clk;
   output Q;
   
   wire S,R;
   wire clk;
   reg Q;

//else if   

   always @(posedge clk or S or R)
    begin

     if (S == 0 && R == 1)begin
     Q <= 1'b0;
     end

     else if (S == 1 && R == 0)begin
     Q <= 1'b1;
     end

     else if (S == 0 && R == 0)begin
     Q <= Q;
     end

     else begin
     Q = 1'bx;
     end
    end       



/*if statement
   
   always @(posedge clk or S or R)
    begin

	 if (!S & R )Q <= 0;
	 if ( S & !R)Q <= 1;
	 if (!S & !R)Q <= Q;
	 if ( S & R )Q <= 1'bx;
   
    end*/



/*else statement

   always @(posedge clk or S or R)
    begin

	 if (~S & R) Q <= 0;
	 else if ( S &~R) Q <= 1;
	 else if (~S &~R) Q <= Q;
	 else if ( S & R) Q <= 1'bx;
	 else $display("not valid");
    
	end*/
endmodule
