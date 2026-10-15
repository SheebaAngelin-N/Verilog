`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 02:13:02 PM
// Design Name: 
// Module Name: mul34x34
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


module mul34x34(c,a,b,clk,rst);
output[63:0]c;
input clk,rst;
input[31:0]a;
input[31:0]b;
reg[63:0]c;
always @(posedge clk or posedge rst)
begin 
if(rst)
c<=0;
else
c<=a*b;
end
endmodule
