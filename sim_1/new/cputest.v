module test(
    );
    reg Clk;
	reg[31:0]X,Y;
	reg[1:0]Aluc;
	wire[31:0]R;
	wire Z,V;

ALU uut(.X(X),.Y(Y),.Aluc(Aluc),.R(R),.Z(Z),.V(V));
initial
	begin
		Clk=0;
		X=32'h10;
		Y=32'h20;
		Aluc=2'b00;
	end
always

begin

		#5 Clk = ~Clk;


end
endmodule
