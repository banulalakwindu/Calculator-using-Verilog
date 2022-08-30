module d_latch(input d,en,reset,output reg q);			
		always @(en or reset or d )
		begin
			if(!reset)
				q<=1'b0;
			else
				if(en)
					q<=d;
		end			
endmodule