`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2026 03:58:24 PM
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(q,s,r,clk,rst);
output q ;
input s,r,clk,rst;
reg q;
always @(posedge clk or posedge rst)
begin
if(rst)
q<=1'b0;
else
begin
case({s,r})
2'b00: q<=q;
2'b01: q<=1'b0;
2'b10: q<=1'b1;
2'b11: q<=1'bx;
endcase
end
end
endmodule
