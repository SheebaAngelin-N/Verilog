`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2026 04:32:20 PM
// Design Name: 
// Module Name: subtractor_4bit
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


module subtractor_4bit(dif,borrow,a,b,cin);
output[3:0]dif;
output borrow;
input[3:0]a;
input[3:0]b;
input cin;
wire[2:0]w;
full_sub fs1(dif[0],w[0],a[0],b[0],cin);
full_sub fs2(dif[1],w[1],a[1],b[1],w[0]);
full_sub fs3(dif[2],w[2],a[2],b[2],w[1]);
full_sub fs4(dif[3],borrow,a[3],b[3],w[2]);
endmodule
