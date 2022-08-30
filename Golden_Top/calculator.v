module calculator(input sign_input, input number_input,input [6:0] SW,input en,input res,output [7:0] hex0, output [7:0] hex1, output [7:0] hex2, output [7:0] hex3, output [7:0] hex4, output [7:0] hex5, output [3:0] led );

//input A
inputNum numA(~(number_input),SW,en,res,A6,A5,A4,A3,A2,A1,A0);
bin2BCD disp1(0,A6,A5,A4,A3,A2,A1,A0,AOut_7,AOut_6,AOut_5,AOut_4,AOut_3,AOut_2,AOut_1,AOut_0);
num_decoder deco1(AOut_3,AOut_2,AOut_1,AOut_0, hex4);
num_decoder deco2(AOut_7,AOut_6,AOut_5,AOut_4, hex5);

//input B
inputNum numB(number_input,SW,en,res,B6,B5,B4,B3,B2,B1,B0);
bin2BCD disp2(0,B6,B5,B4,B3,B2,B1,B0,BOut_7,BOut_6,BOut_5,BOut_4,BOut_3,BOut_2,BOut_1,BOut_0);
num_decoder deco3(BOut_3,BOut_2,BOut_1,BOut_0, hex2);
num_decoder deco4(BOut_7,BOut_6,BOut_5,BOut_4, hex3);

//calculate
math_sign sign(sign_input,A6,A5,A4,A3,A2,A1,A0,B6,B5,B4,B3,B2,B1,B0,SW[0],SW[1],SW[2],SW[3],out6,out5,out4,out3,out2,out1,out0,led);
bin2BCD disp3(0,out6,out5,out4,out3,out2,out1,out0,ansOut_7,ansOut_6,ansOut_5,ansOut_4,ansOut_3,ansOut_2,ansOut_1,ansOut_0);
num_decoder deco5(ansOut_7,ansOut_6,ansOut_5,ansOut_4, hex1);
num_decoder deco6(ansOut_3,ansOut_2,ansOut_1,ansOut_0, hex0);

endmodule


