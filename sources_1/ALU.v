module ALU(X,Y,Aluc,R,Z,V);
	input[31:0]X,Y;
	input[1:0]Aluc;
	output[31:0]R;
	output Z,V;
	wire[31:0]d_as,d_and,d_or,d_and_or,Cout;
	ADDSUB_32 as32(X,Y,Aluc[0],d_as,Cout);
	assign d_or=X|Y;
	assign d_and = X&Y;
	MUX2X32 select1(d_and,d_or,Aluc[0],d_and_or);
	MUX2X32 select2(d_as,d_and_or,Aluc[1],R);
	assign Z = ~|R;
	assign V=~Aluc[1]&~Aluc[0]&~X[31]&~Y[31]&R[31]|~Aluc[1]&~Aluc[0]&X[31]&Y[31]&R[31]|~Aluc[1]&~Aluc[0]&~X[31]&Y[31]&R[31]|~Aluc[1]&~Aluc[0]&X[31]&|Y[31]&R[31];
endmodule