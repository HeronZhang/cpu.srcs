module CLA_4(X,Y,C0,S,C4);
	input [3:0]X,Y;
	input C0;
	output [3:0]S;
	output C4;
	wire [3:0] G,P;
	wire C1,C2,C3;
	assign G = X&Y;
	assign P = X|Y;
	assign C1 = G[0]|P[0]&C0;
	assign C2 = G[1]|P[1]&C1;
	assign C3 = G[2]|P[2]&C2;
	assign C4 = G[3]|P[3]&C3;
	assign S[3] = X[3]^Y[3]^C3;
	assign S[2] = X[2]^Y[2]^C2;
	assign S[1] = X[1]^Y[1]^C1;
	assign S[0] = X[0]^Y[0]^C0;
endmodule