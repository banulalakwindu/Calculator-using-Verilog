module UnitCell(input x,y,bin,s, output Y,bout,out_s);
       wire w1;
       FullSubtractor FS1(x,y,bin,w1,bout);
       Mux m1(x,w1,s,Y);
       assign out_s=s;
       endmodule

