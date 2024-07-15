module ALU (a,b,sel,result);
input  wire [3:0]a,b;
input wire [7:0] sel;
output reg [3:0]result;



always@(*)begin
   case (sel)
     //Two Operands

        //Arthmetic
            8'b0000_0000 : result = a * b;
            8'b0000_0001 : result = a / b;
            8'b0000_0010 : result = a + b;
            8'b0000_0011 : result = a - b;
            8'b0000_0100 : result = a % b;
		    8'b0000_0101 : result = a ** b;
       //Logical
   	 	    8'b0000_0110 : result = a && b;
		    8'b0000_0111 : result = a || b;

	   //Relational
	        8'b0000_1000 : result = a > b;
			8'b0000_1001 : result = a < b;
			8'b0000_1010 : result = a >= b;
			8'b0000_1011 : result = a <= b;

	  //Equality
	        8'b0000_1100 : result = a == b;
			8'b0000_1101 : result = a != b;
			8'b0000_1110 : result = a === b;
			8'b0000_1111 : result = a !== b;

	 //Bitwise
	        8'b0001_0000 : result = a & b;
			8'b0001_0001 : result = a | b;
			8'b0001_0010 : result = a ^ b;
			8'b0001_0011 : result = a ~^ b;


	//shift
	        8'b0001_0100 : result = a >> b;
            8'b0001_0101 : result = a << b;
            8'b0001_0110 : result = a >>> b;
            8'b0001_0111 : result = a <<< b;


    //concatenation and replication
	        8'b0001_1000 : result = {a,b};
			8'b0001_1001 : result = {{a,b}};
			

		default : $display("CHECK THE INPUT");
   endcase
   end
endmodule
