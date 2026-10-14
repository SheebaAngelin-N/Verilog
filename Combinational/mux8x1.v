`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 10:38:59 PM
// Design Name: 
// Module Name: mux8x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
