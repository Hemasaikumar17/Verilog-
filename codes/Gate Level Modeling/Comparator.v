module Comparator(A,B,X,Y,Z);
 input A,B;
 output X,Y,Z;

 xnor gate1 (X,A,B);  //A = B

 and gate2 (Y,A,~B);
 
 and gate3 (Z,~A,B);

endmodule 
