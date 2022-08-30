module bit8_adder(input sub,A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0, output S7,S6,S5,S4,S3,S2,S1,S0);
  
    xor x1(w1,1'b0,sub);

    xor x2(w2,B0,sub);
    xor x3(w3,B1,sub);
    xor x4(w4,B2,sub);
    xor x5(w5,B3,sub);
    xor x6(w6,B4,sub);
    xor x7(w7,B5,sub);
    xor x8(w8,B6,sub);
    //xor x9(w9,B7,sub);

    full_add add1(A0,w2,w1,S_0,C0);
    full_add add2(A1,w3,C0,S_1,C1);
    full_add add3(A2,w4,C1,S_2,C2);
    full_add add4(A3,w5,C2,S_3,C3);
    full_add add5(A4,w6,C3,S_4,C4);
    full_add add6(A5,w7,C4,S_5,C5);
    full_add add7(A6,w8,C5,S_6,C6);
    //full_add add8(A7,w9,C6,S_7,C7);

    xor x10(cOut,sub,C6);
	 
	 //or or1(S7,cOut,S_7);
	 or or2(S6,cOut,S_6);
	 or or3(S5,cOut,S_5);
	 or or4(S4,cOut,S_4);
	 or or5(S3,cOut,S_3);
	 or or6(S2,cOut,S_2);
	 or or7(S1,cOut,S_1);
	 or or8(S0,cOut,S_0);

endmodule