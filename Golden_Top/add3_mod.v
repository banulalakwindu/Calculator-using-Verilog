module add3_mod(input addInput_1,addInput_2,addInput_3, addInput_4, output addOutput_1, addOutput_2, addOutput_3, addOutput_4);

wire ws3_1,ws3_2,ws3_3,ws2_1,ws2_2,ws2_3,ws1_1,ws1_2,ws1_3,ws1_4,ws0_1,ws0_2,ws0_3,ws0_4,ws0_5,ws0_6;

//inputs
assign A3 = addInput_1;
assign A2 = addInput_2;
assign A1 = addInput_3;
assign A0 = addInput_4;

//outputs
assign addOutput_1 = S3;
assign addOutput_2 = S2;
assign addOutput_3 = S1;
assign addOutput_4 = S0;

//nots
assign nA3 = ~A3;
assign nA2 = ~A2;
assign nA1 = ~A1;
assign nA0 = ~A0;

//S3
and s3_1(ws3_1,A2,A0);

and s3_2(ws3_2,A1,A2);

or s3_3(ws3_3,ws3_1,ws3_2);
or s3_4(S3,A3,ws3_3);

//S2
and s2_1(ws2_1,A0,A3);

and s2_2(ws2_2,nA0,nA1);
and s2_3(ws2_3,ws2_2,A2);

or s2_4(S2,ws2_1,ws2_3);

//S1
and s1_1(ws1_1,nA0,A3);

and s1_2(ws1_2,A1,nA2);

and s1_3(ws1_3,A0,A1);

or s1_4(ws1_4,ws1_1,ws1_2);
or s1_5(S1,ws1_4,ws1_3);

//S0
and s0_1(ws0_1,nA0,A3);

and s0_2(ws0_2,A0,nA2);
and s0_3(ws0_3,ws0_2,nA3);

and s0_4(ws0_4,nA0,A1);
and s0_5(ws0_5,ws0_4,A2);

or s0_6(ws0_6,ws0_1,ws0_3);
or s0_7(S0,ws0_6,ws0_5);

endmodule


