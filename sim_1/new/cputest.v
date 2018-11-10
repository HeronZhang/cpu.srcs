module test(
    );
    reg Clk;
	wire [31:0]instruction;
FETCHINST uut(.Clk(Clk),
				.instruction(instruction),
				.PCsrc(2'b00)
				);

always
begin

		#20 Clk = 0;

		#20 Clk = 1;

end
endmodule
