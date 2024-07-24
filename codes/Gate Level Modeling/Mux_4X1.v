module Mux_4X1(i0,i1,i2,i3,s0,s1,Y);
 input i0,i1,i2,i3;
 input s0,s1;
 output Y;

 and gate1 (w1,~s0,~s1,i0);
 and gate2 (w2,~s0,s1,i1);
 and gate3 (w3,s0,~s1,i2);
 and gate4 (w4,s0,s1,i3);

 or  gate5 (Y,w1,w2,w3,w4);

endmodule
