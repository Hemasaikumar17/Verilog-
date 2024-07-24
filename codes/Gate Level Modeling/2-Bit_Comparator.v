module Bit_Comparator(A0,A1,B0,B1,X,Y,Z);
 input A0,A1,B0,B1;
 output X,Y,Z;

 xnor gate1  (w1,A0,B0);
 xnor gate2  (w2,A1,B1);
 and  gate3  (X,w1,w2);

 and  gate4  (w3,A1,~B1);
 xnor gate5  (w4,A1,B1);
 or   gate6  (w5,w3,w4);
 and  gate7  (w6,A0,~B0);
 and  gate8  (Y,w5,w6);

 and  gate9  (w7,~A1,B1);
 xnor gate10 (w8,A1,B1);
 or   gate11 (w9,w7,w8);
 and  gate12 (w10,~A0,B0);
 and  gate13 (Z,w9,w10);

endmodule
