module inputNum(input num, input [6:0] sw,input en_in,input reset,output out_6,out_5,out_4,out_3,out_2,out_1,out_0);
						
		and a(en,num,en_in);

		d_latch D0(sw[0],en,reset,out_0);
		d_latch D1(sw[1],en,reset,out_1);
		d_latch D2(sw[2],en,reset,out_2);
		d_latch D3(sw[3],en,reset,out_3);
		d_latch D4(sw[4],en,reset,out_4);
		d_latch D5(sw[5],en,reset,out_5);
		d_latch D6(sw[6],en,reset,out_6);		
					
endmodule