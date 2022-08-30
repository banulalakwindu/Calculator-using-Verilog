module eight_bit_full_adder ( input [7:0]i,input [7:0]j,input carryin, output carryout, output [7:0]s);

wire [7:0]w;


// full_add(input a,b,cin, output sum,cout);
full_add f1(i[0],j[0],0,s[0],w[0]);
full_add f2(i[1],j[1],w[0],s[1],w[1]);
full_add f3(i[2],j[2],w[1],s[2],w[2]);
full_add f4(i[3],j[3],w[2],s[3],w[3]);
full_add f5(i[4],j[4],w[3],s[4],w[4]);
full_add f6(i[5],j[5],w[4],s[5],w[5]);
full_add f7(i[6],j[6],w[5],s[6],w[6]);
full_add f8(i[7],carryin,w[6],s[7],carryout);


endmodule 