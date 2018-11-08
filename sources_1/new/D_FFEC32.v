module D_FFEC32(D,Clk,En,Clrn,Q,Qn);
	input[31:0]D;
	input Clk,En,Clrn;
	output [31:0]Q,Qn;
	D_FFEC d0(D[0])