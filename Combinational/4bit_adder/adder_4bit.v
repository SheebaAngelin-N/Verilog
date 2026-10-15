module adder_4bit(s,c,a,b,cin);
output[3:0]s;
output c;
input[3:0]a;
input[3:0]b;
input cin;
wire[2:0]w;
full_adder f1(s[0],w[0],a[0],b[0],cin);
full_adder f2(s[1],w[1],a[1],b[1],w[0]);
full_adder f3(s[2],w[2],a[2],b[2],w[1]);
full_adder f4(s[3],c,a[3],b[3],w[2]);
endmodule
