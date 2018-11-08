module MUX2X1(A0,A1,S,Y);
	input A0,A1,S;
	output Y;
	not i0(S_n,S);
	nand i1(A0_S,A0,S_n);
	nand i2(A1_S,A1,S);
	nor i3(Y,A0_S,A1_S);
endmodule