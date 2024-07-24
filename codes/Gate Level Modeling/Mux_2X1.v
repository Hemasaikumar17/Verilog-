module Mux_2X1(i0,i1,S,Y);
 input i0,i1,S;
 output Y;

 and gate1 (w1,i0,~S);
 and gate2 (w2,i1,S);

 or  gate3 (Y,w1,w2);

endmodule 
