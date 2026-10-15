`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 10:25:49 AM
// Design Name: 
// Module Name: encoder
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


module encoder(s,i,e);
output[1:0]s;
input[3:0]i;
input e;
reg[1:0]s;
always @(i,e)
begin
if(e==0)
s=2'b00;
else
begin
case(i)
4'b1000 : s=2'b00;
4'b0100 : s=2'b01;
4'b0010 : s=2'b10;
4'b0001 : s=2'b11;
endcase
end
end
endmodule
