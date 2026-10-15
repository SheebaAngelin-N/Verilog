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
