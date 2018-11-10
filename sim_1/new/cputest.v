module test(
    );
    reg Clk;
	wire [31:0]instruction;
TOP uut(.Clk(Clk));

initial
	begin
		Clk=0;
	end
always

begin

		#5 Clk = ~Clk;


end
endmodule
