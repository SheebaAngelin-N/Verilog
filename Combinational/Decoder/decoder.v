`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2026 01:49:30 PM
// Design Name: 
// Module Name: decoder
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


module decoder(s,i);
output[3:0]s;
input[1:0]i;
reg[3:0]s;
always @(i)
begin
case(i)
2'b00 : s = 4'b1000;
2'b01 : s = 4'b0100;
2'b10 : s = 4'b0010;
2'b11 : s = 4'b0001;
endcase
end
endmodule
