`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2026 02:14:00 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(q,clk,rst,t);
output reg q;
input clk,rst,t;
always @(posedge clk)
begin
if(rst)
q<=1'b0;
else 
if(t==1'b0)
q<=q;
else 
q<=~q;
end 
endmodule
