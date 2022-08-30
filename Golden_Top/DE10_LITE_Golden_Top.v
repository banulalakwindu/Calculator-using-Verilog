
module DE10_LITE_Golden_Top(

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW	
);

calculator cal(SW[9],SW[8],SW[6:0],SW[7],KEY[1],HEX0,HEX1,HEX2,HEX3,HEX4,HEX5,LEDR[3:0]);

endmodule
