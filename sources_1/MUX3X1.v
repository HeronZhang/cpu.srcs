module MUX3X1(S,A0,A1,A3,Y);
input [31:0]A0,A1,A3;
input [1:0]S;
output [31:0]Y;
always@(*)
begin
if(S=2'd00)
    assign Y=A0;
else if(S=2'd01)
    assign Y=A1;
else if(S=2'd11)
    assign Y=A3;
end
endmodule
