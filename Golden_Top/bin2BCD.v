module bin2BCD(input I7,I6,I5,I4,I3,I2,I1,I0, output addOutput_7,addOutput_6,addOutput_5,addOutput_4,addOutput_3,addOutput_2,addOutput_1,addOutput_0);

wire add3_1_S3, add3_1_S2, add3_1_S1, add3_1_S0, add3_2_S3, add3_2_S2, add3_2_S1, add3_2_S0, add3_3_S3, add3_3_S2, add3_3_S1, add3_3_S0, add3_4_S3, add3_4_S2, add3_4_S1, add3_4_S0, add3_6_S2, add3_6_S1, add3_6_S0 ;

add3_mod U0(1'b0,I7,I6,I5,add3_1_S3,add3_1_S2,add3_1_S1,add3_1_S0);
add3_mod U1(add3_1_S2,add3_1_S1,add3_1_S0,I4,add3_2_S3,add3_2_S2,add3_2_S1,add3_2_S0);
add3_mod U2(add3_2_S2,add3_2_S1,add3_2_S0,I3,add3_3_S3,add3_3_S2,add3_3_S1,add3_3_S0);
add3_mod U3(add3_3_S2,add3_3_S1,add3_3_S0,I2,add3_4_S3,add3_4_S2,add3_4_S1,add3_4_S0);
add3_mod U4(add3_4_S2,add3_4_S1,add3_4_S0,I1,add3_5_S3,add3_5_S2,add3_5_S1,add3_5_S0);
add3_mod U5(1'b0,add3_1_S3,add3_2_S3,add3_3_S3,add3_6_S3,add3_6_S2,add3_6_S1,add3_6_S0);
add3_mod U6(add3_6_S2,add3_6_S1,add3_6_S0,add3_4_S3,add3_7_S3,add3_7_S2,add3_7_S1,add3_7_S0);

//overflow_correction
or co1(over,add3_6_S3,add3_7_S3);

//Outputs
or outO1(addOutput_0,I0,over);
or outO2(addOutput_1,add3_5_S0,over);
or outO3(addOutput_2,add3_5_S1,over);
or outO4(addOutput_3,add3_5_S2,over);
or outO5(addOutput_4,add3_5_S3,over);
or outO6(addOutput_5,add3_7_S0,over);
or outO7(addOutput_6,add3_7_S1,over);
or outO8(addOutput_7,add3_7_S2,over);

endmodule