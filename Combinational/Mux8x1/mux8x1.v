module mux8x1(y,a,s);
output y;
input[7:0]a;
input[2:0]s;
wire[5:0]w;
mux2x1 m1(w[0],a[0],a[1],s[0]);
mux2x1 m2(w[1],a[2],a[3],s[0]);
mux2x1 m3(w[2],a[4],a[5],s[0]);
mux2x1 m4(w[3],a[6],a[7],s[0]);
mux2x1 m5(w[4],w[0],w[1],s[1]);
mux2x1 m6(w[5],w[2],w[3],s[1]);
mux2x1 m7(y,w[4],w[5],s[2]);
endmodule
