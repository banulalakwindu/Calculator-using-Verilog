module num_decoder(input decInput_3, decInput_2, decInput_1, decInput_0, output [7:0] dispOut);

wire A,B,C,D,nA,nB,nC,nD,aOut,bOut,cOut,dOut,eOut,fOut,gOut,wa1,wa2,wa3,wa4,wa5,wa6,wb1,wb2,wb3,wb4,wb5,wb6,wb7,wb8,wc1,wc2,wc3,wc4,wc5,wd1,wd2,wd3,wd4,wd5,wd6,wd7,wd8,wd9,wd10,we1,we2,we3,we4,we5,we6,wf1,wf2,wf3,wf4,wg1,wg2,wg3,wg4,wg5;

//inputs
assign A = decInput_0;
assign B = decInput_1;
assign C = decInput_2;
assign D = decInput_3;

//outputs
assign dispOut[0] = aOut;
assign dispOut[1] = bOut;
assign dispOut[2] = cOut;
assign dispOut[3] = dOut;
assign dispOut[4] = eOut;
assign dispOut[5] = fOut;
assign dispOut[6] = gOut;
assign dispOut[7] = 1;

//nots
assign nA = ~A;
assign nB = ~B;
assign nC = ~C;
assign nD = ~D;

//aout
and a1(wa1,A,nB);
and a2(wa2,wa1,nC);
and a3(wa3,wa2,nD);

and a4(wa4,nB,nA);
and a5(wa5,wa4,C);
and a6(wa6,wa5,nD);

or a7(aOut,wa3,wa6);

//bout
and b1(wb1,D,C);

and b2(wb2,B,D);

and b3(wb3,A,nB);
and b4(wb4,wb3,C);

and b5(wb5,nA,B);
and b6(wb6,wb5,C);

or b7(wb7,wb1,wb2);
or b8(wb8,wb7,wb4);
or b9(bOut,wb8,wb6);

//cout
and c1(wc1,D,C);

and c2(wc2,B,D);

and c3(wc3,nA,B);
and c4(wc4,wc3,nC);

or c5(wc5,wc1,wc2);
or c6(cOut,wc5,wc4);

//dout
and d1(wd1,A,nB);
and d2(wd2,wd1,nC);
and d3(wd3,wd2,nD);

and d4(wd4,nA,nB);
and d5(wd5,wd4,C);
and d6(wd6,wd5,nD);

and d7(wd7,A,B);
and d8(wd8,wd7,C);
and d9(wd9,wd8,nD);

or d10(wd10,wd3,wd6);
or d11(dOut,wd10,wd9);

//eout
and e1(we1,A,nD);

and e2(we2,nB,C);
and e3(we3,we2,nD);

and e4(we4,A,nB);
and e5(we5,we4,nC);

or e6(we6,we1,we3);
or e7(eOut,we6,we5);

//fout
and f1(wf1,A,nC);
and f2(wf2,wf1,nD);

and f3(wf3,B,nC);
and f4(wf4,wf3,nD);

or f5(fOut,wf2,wf4);

//gout
and g1(wg1,nB,nC);
and g2(wg2,wg1,nD);

and g3(wg3,A,B);
and g4(wg4,wg3,C);
and g5(wg5,wg4,nD);

or g6(gOut,wg2,wg5);

endmodule