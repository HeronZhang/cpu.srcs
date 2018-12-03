module MUX5X32(S,A0,A1,A2,A3,A4,Y);
input [31:0]A0,A1,A3;
input [1:0]S;
output [31:0]Y;
function [31:0] select;
	input[31:0]A0,A1,A3;
	input S;
	case(S)
		2'b000:select=A0;
		2'b001:select=A1;
        2'b010:select=A2;
        2'b011:select=A3;
        2'b100:select=A4;
	endcase
endfunction
assign Y=select(A0,A1,A2,A3,A4,S);

endmodule
