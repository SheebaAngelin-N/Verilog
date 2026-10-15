`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2026 11:25:04 PM
// Design Name: 
// Module Name: counter
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


module counter(q,clk,reset);
output reg[7:0]q;
input clk,reset;
wire clk_out;
clock_divider_100MHz_to_1Hz x1(clk,reset,clk_out);
always @(posedge clk_out or posedge reset)
begin
if(reset)
q<=8'b00000000;
else
q<=q+1'b1;
end
endmodule

module clock_divider_100MHz_to_1Hz(
input wire clk_in,
input wire rst,
output reg clk_out);
reg[25:0]counter;
always @(posedge clk_in or posedge rst)
begin
if(rst)
begin
counter<=26'd0;
clk_out<=1'b0;
end
else
begin
if(counter==26'd49_999_999)
begin
counter<=26'd0;
clk_out<=~clk_out;
end
else
begin
counter<=counter+26'd1;
end
end
end
endmodule

