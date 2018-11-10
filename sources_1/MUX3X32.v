module MUX3X32(S,A0,A1,A3,Y);
input [31:0]A0,A1,A3;
input [1:0]S;
output reg [31:0]Y;
initial
begin
Y=32'd0;
end

always@(*)
begin
#5
if(S==2'b00)
    Y=A0;
else if(S==2'b01)
    Y=A1;
else if(S==2'b11)
    Y=A3;
end
endmodule
