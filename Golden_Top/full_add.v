module full_add(input a,b,cin, output sum,cout);

  wire x,y,z;
 
  half_add h1(.a(a),.b(b),.s(x),.c(y));
  half_add h2(.a(x),.b(cin),.s(sum),.c(z));
  or o1(cout,y,z);
  
endmodule