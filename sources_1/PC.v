module PC(D,Clk,Q);
input [31:0]D;
input Clk;
output reg [31:0]Q;
reg [31:0]regs;
initial
begin
Q=32'd0;
end

always@(posedge Clk)
begin
regs=D;
Q=regs;
end
endmodule

