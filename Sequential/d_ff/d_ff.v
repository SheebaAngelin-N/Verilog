module d_ff(q,d,clk,rst);
output q;
input clk,rst,d;
reg q;
always @(posedge clk or posedge rst)
begin
if(rst)
q <= 1'b0;
else
q <= d;
end
endmodule
