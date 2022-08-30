module multiplier( input A7,A6,A5,A4,A3,A2,A1,A0,B7,B6,B5,B4,B3,B2,B1,B0,output c_new_6,c_new_5,c_new_4,c_new_3,c_new_2,c_new_1,c_new_0);
	wire [7:0] w0;//B0
	wire [7:0] w1;//B1
	wire [7:0] w2;//B2
	wire [7:0] w3;//B3
	wire [7:0] w4;//B4
	wire [7:0] w5;//B5
	wire [7:0] w6;//B6
	wire [7:0] w7;//B7
	
	wire [7:0] y0;
	wire [7:0] y1;
	wire [7:0] y2;
	wire [7:0] y3;
	wire [7:0] y4;
	wire [7:0] y5;
	wire [7:0] y6;
	wire [0:7] carry;

	wire c_out_w7,c_out_w8,c_out_w9,c_out_w10,c_out_w11,c_out_w12,c_out_w13,c_out_w14,c_out_w15;
	
	and (w0[0],A0,B0);
	and (w0[1],A1,B0);
	and (w0[2],A2,B0);
	and (w0[3],A3,B0);
	and (w0[4],A4,B0);
	and (w0[5],A5,B0);
	and (w0[6],A6,B0);
	and (w0[7],A7,B0);
	
	
	and (w1[0],A0,B1);
	and (w1[1],A1,B1);
	and (w1[2],A2,B1);
	and (w1[3],A3,B1);
	and (w1[4],A4,B1);
	and (w1[5],A5,B1);
	and (w1[6],A6,B1);
	and (w1[7],A7,B1);

	// frist out come.final bit
	assign c_out_0 = w0[0];
	assign carry[0] = 0;
	//eight_bit_full_adder ( [7:0]i,[7:0]j, carryin , carryout,[7:0]s);
	eight_bit_full_adder adder0(w0[7:1],w1[7:0],carry[0],carry[1],y0[7:0]);
	
	// second final bit								
	assign c_out_1 = y0[0];
	
	and (w2[0],A0,B2);
	and (w2[1],A1,B2);
	and (w2[2],A2,B2);
	and (w2[3],A3,B2);
	and (w2[4],A4,B2);
	and (w2[5],A5,B2);
	and (w2[6],A6,B2);
	and (w2[7],A7,B2);
	
	
	eight_bit_full_adder adder1(y0[7:1],w2[7:0],carry[1],carry[2],y1[7:0]);
		
	assign c_out_2 = y1[0];
		
	and (w3[0],A0,B3);
	and (w3[1],A1,B3);
	and (w3[2],A2,B3);
	and (w3[3],A3,B3);
	and (w3[4],A4,B3);
	and (w3[5],A5,B3);
	and (w3[6],A6,B3);
	and (w3[7],A7,B3);
	
	eight_bit_full_adder adde2(y1[7:1],w3[7:0],carry[2],carry[3],y2[7:0]);
	
	assign c_out_3 = y2[0];
		
		
	and (w4[0],A0,B4);
	and (w4[1],A1,B4);
	and (w4[2],A2,B4);
	and (w4[3],A3,B4);
	and (w4[4],A4,B4);
	and (w4[5],A5,B4);
	and (w4[6],A6,B4);
	and (w4[7],A7,B4);
	
	eight_bit_full_adder adde3(y2[7:1],w4[7:0],carry[3],carry[4],y3[7:0]);		
	
	assign c_out_4 = y3[0];
		
		
	and (w5[0],A0,B5);
	and (w5[1],A1,B5);
	and (w5[2],A2,B5);
	and (w5[3],A3,B5);
	and (w5[4],A4,B5);
	and (w5[5],A5,B5);
	and (w5[6],A6,B5);
	and (w5[7],A7,B5);
	
	eight_bit_full_adder adde4(y3[7:1],w5[7:0],carry[4],carry[5],y4[7:0]);
		
	assign c_out_5 = y4[0];
		
	
	and (w6[0],A0,B6);
	and (w6[1],A1,B6);
	and (w6[2],A2,B6);
	and (w6[3],A3,B6);
	and (w6[4],A4,B6);
	and (w6[5],A5,B6);
	and (w6[6],A6,B6);
	and (w6[7],A7,B6);
	
	eight_bit_full_adder adde5(y4[7:1],w6[7:0],carry[5],carry[6],y5[7:0]);
		
		assign c_out_6 = y5[0];
		
		
	and (w7[0],A0,B7);
	and (w7[1],A1,B7);
	and (w7[2],A2,B7);
	and (w7[3],A3,B7);
	and (w7[4],A4,B7);
	and (w7[5],A5,B7);
	and (w7[6],A6,B7);
	and (w7[7],A7,B7);
	
	eight_bit_full_adder adde6(y5[7:1],w7[7:0],carry[6],carry[7],y6[7:0]);
		
	assign c_out_w7 = y6[0];
	assign c_out_w8 = y6[1];
	assign c_out_w9 = y6[2];
	assign c_out_w10 = y6[3];	
	assign c_out_w11 = y6[4];
	assign c_out_w12 = y6[5];
	assign c_out_w13 = y6[6];
	assign c_out_w14 = y6[7];
	assign c_out_w15 = carry[7];

	or o1(overFlow,c_out_w7, c_out_w8 ,c_out_w9 ,c_out_w10,c_out_w11,c_out_w12,c_out_w13,c_out_w14,c_out_w15);

	or a1(c_new_0,overFlow,c_out_0);
	or a2(c_new_1,overFlow,c_out_1);
	or a3(c_new_2,overFlow,c_out_2);
	or a4(c_new_3,overFlow,c_out_3);
	or a5(c_new_4,overFlow,c_out_4);
	or a6(c_new_5,overFlow,c_out_5);
	or a7(c_new_6,overFlow,c_out_6);



endmodule 