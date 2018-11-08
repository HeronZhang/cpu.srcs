module MUX2X32(A0,A1,S,Y);
input [31:0]A0,A1;
input S;
output[31:0] Y;
function [31:0] select;
	input[31:0]A0,A1;
	input S;
	case(S)
		0:select=A0;
		1:select=A1;
	endcase
endfunction
assign Y=select(A0,A1,S);
endmodule