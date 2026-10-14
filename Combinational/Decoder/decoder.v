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
