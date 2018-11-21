module PC(D,Clk,Q);
input [31:0]D;
input Clk;
output reg [31:0]Q;
initial
begin
Q=32'd0;
end

always@(posedge Clk)
begin
Q=D;
end
endmodule

