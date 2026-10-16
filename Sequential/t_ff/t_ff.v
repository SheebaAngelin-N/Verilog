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
