module math_sign(input onOff,A6,A5,A4,A3,A2,A1,A0,B6,B5,B4,B3,B2,B1,B0,SW0,SW1,SW2,SW3,output ans_6,ans_5,ans_4,ans_3,ans_2,ans_1,ans_0,output [3:0] led);

//inputs

assign SW0_new = SW0 & onOff;
assign SW1_new = SW1 & onOff;
assign SW2_new = SW2 & onOff;
assign SW3_new = SW3 & onOff;

assign led[0] = SW0_new;
assign led[1] = SW1_new;
assign led[2] = SW2_new;
assign led[3] = SW3_new;

and a1(A6_new,A6,onOff);
and a2(A5_new,A5,onOff);
and a3(A4_new,A4,onOff);
and a4(A3_new,A3,onOff);
and a5(A2_new,A2,onOff);
and a6(A1_new,A1,onOff);
and a7(A0_new,A0,onOff);

and a8(B6_new,B6,onOff);
and a9(B5_new,B5,onOff);
and a10(B4_new,B4,onOff);
and a11(B3_new,B3,onOff);
and a12(B2_new,B2,onOff);
and a13(B1_new,B1,onOff);
and a14(B0_new,B0,onOff);

//adder
bit8_adder add(0,0,A6_new,A5_new,A4_new,A3_new,A2_new,A1_new,A0_new,0,B6_new,B5_new,B4_new,B3_new,B2_new,B1_new,B0_new,addOut_7,addOut_6,addOut_5,addOut_4,addOut_3,addOut_2,addOut_1,addOut_0);

and a16(addAns_6,addOut_6,SW0_new);
and a17(addAns_5,addOut_5,SW0_new);
and a18(addAns_4,addOut_4,SW0_new);
and a19(addAns_3,addOut_3,SW0_new);
and a20(addAns_2,addOut_2,SW0_new);
and a21(addAns_1,addOut_1,SW0_new);
and a22(addAns_0,addOut_0,SW0_new);

//subtractor
bit8_adder diff(1,0,A6_new,A5_new,A4_new,A3_new,A2_new,A1_new,A0_new,0,B6_new,B5_new,B4_new,B3_new,B2_new,B1_new,B0_new,subOut_7,subOut_6,subOut_5,subOut_4,subOut_3,subOut_2,subOut_1,subOut_0);

and a23(subAns_6,subOut_6,SW1_new);
and a24(subAns_5,subOut_5,SW1_new);
and a25(subAns_4,subOut_4,SW1_new);
and a26(subAns_3,subOut_3,SW1_new);
and a27(subAns_2,subOut_2,SW1_new);
and a28(subAns_1,subOut_1,SW1_new);
and a29(subAns_0,subOut_0,SW1_new);

//multi
multiplier multi(0,A6_new,A5_new,A4_new,A3_new,A2_new,A1_new,A0_new,0,B6_new,B5_new,B4_new,B3_new,B2_new,B1_new,B0_new,multiOut_6,multiOut_5,multiOut_4,multiOut_3,multiOut_2,multiOut_1,multiOut_0);

and a30(multiAns_6,multiOut_6,SW2_new);
and a31(multiAns_5,multiOut_5,SW2_new);
and a32(multiAns_4,multiOut_4,SW2_new);
and a33(multiAns_3,multiOut_3,SW2_new);
and a34(multiAns_2,multiOut_2,SW2_new);
and a35(multiAns_1,multiOut_1,SW2_new);
and a36(multiAns_0,multiOut_0,SW2_new);

//divide
Divider div(A6_new,A5_new,A4_new,A3_new,A2_new,A1_new,A0_new,B6_new,B5_new,B4_new,B3_new,B2_new,B1_new,B0_new, dividOut_6,dividOut_5,dividOut_4,dividOut_3,dividOut_2,dividOut_1,dividOut_0);

and a37(dividAns_6,dividOut_6,SW3_new);
and a38(dividAns_5,dividOut_5,SW3_new);
and a39(dividAns_4,dividOut_4,SW3_new);
and a40(dividAns_3,dividOut_3,SW3_new);
and a41(dividAns_2,dividOut_2,SW3_new);
and a42(dividAns_1,dividOut_1,SW3_new);
and a43(dividAns_0,dividOut_0,SW3_new);

//mux
or o1(ans_6,addAns_6,subAns_6,multiAns_6,dividAns_6);
or o2(ans_5,addAns_5,subAns_5,multiAns_5,dividAns_5);
or o3(ans_4,addAns_4,subAns_4,multiAns_4,dividAns_4);
or o4(ans_3,addAns_3,subAns_3,multiAns_3,dividAns_3);
or o5(ans_2,addAns_2,subAns_2,multiAns_2,dividAns_2);
or o6(ans_1,addAns_1,subAns_1,multiAns_1,dividAns_1);
or o7(ans_0,addAns_0,subAns_0,multiAns_0,dividAns_0);

endmodule