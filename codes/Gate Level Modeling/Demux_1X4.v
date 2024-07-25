module Demux_1X4(Y,s0,s1,i0,i1,i2,i3);
 input Y;
 input s0,s1;
 output i0,i1,i2,i3;

 and gate1 (i0,~s0,~s1,Y);
 and gate2 (i1,~s0,s1,Y);
 and gate3 (i2,s0,~s1,Y);
 and gate4 (i3,s0,s1,Y);

endmodule 


