module MUX3X32(S,A0,A1,A3,Y);
input [31:0]A0,A1,A3;
input [1:0]S;
output [31:0]Y;
function [31:0] select;
	input[31:0]A0,A1,A3;
	input S;
	case(S)
		2'b00:select=A0;
		2'b01:select=A1;
        2'b11:select=A3;
	endcase
endfunction
assign Y=select(A0,A1,A3,S);

endmodule
