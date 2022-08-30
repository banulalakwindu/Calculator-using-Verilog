module FullSubtractor(input x,y,bin, output d,bout);
       wire w1,w2,w3,w4;
       xor x1(w1,x,y);
       xor x2(d,w1,bin);
       xor x3(w2,y,bin);
       and a1(w3,w2,(~x));
       and a2(w4,y,bin);
       or o1(bout,w3,w4);
endmodule