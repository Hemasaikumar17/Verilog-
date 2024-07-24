module Demux_1X2(Y,S,i0,i1);
 input Y,S;
 output i0,i1;

 and gate1 (i0,~S,Y);
 and gate2 (i1,S,Y);

endmodule
