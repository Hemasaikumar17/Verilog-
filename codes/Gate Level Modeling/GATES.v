
   module gate(a,b,y);
      input a,b;
	  output y;

/*AND GATE 
	  and (y,a,b);
	  wire y = a & b;*/

/*OR GATE
     or (y,a,b);
	 wire y = a | b;*/

/*NAND GATE
     nand (y,a,b);
	 wire y = ~(a & b);*/

/*NOR GATE
     nor (y,a,b);
	 wire y = ~(a || b);*/

/*XOR GATE
     xor (y,a,b);
	 wire y = a ^ b;*/

//XNOR GATE
     xnor (y,a,b);
	 //wire y = a ~^ b;
   endmodule
