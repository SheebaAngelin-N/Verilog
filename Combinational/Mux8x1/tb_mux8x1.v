`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2026 10:19:40 AM
// Design Name: 
// Module Name: tb_mux8x1
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




module tb_mux8x1;

reg [7:0] a;
reg [2:0] s;
wire y;

mux8x1 uut (
    .y(y),
    .a(a),
    .s(s)
);

initial begin
    $monitor("Time=%0t | a=%b | s=%b | y=%b", 
              $time, a, s, y);

    a = 8'b10110110;

    s = 3'b000; #10;
    s = 3'b001; #10;
    s = 3'b010; #10;
    s = 3'b011; #10;
    s = 3'b100; #10;
    s = 3'b101; #10;
    s = 3'b110; #10;
    s = 3'b111; #10;

    $finish;
end

endmodule

