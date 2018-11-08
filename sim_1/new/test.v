module test(
    );
reg [4:0]Wr,Ra,Rb;
reg [31:0]D;
reg We,Clk,Clrn;
wire [31:0]Qa,Qb;

REGFILE uut(.Ra(Ra),
			.Rb(Rb),
			.D(D),
			.Wr(Wr),
			.We(We),
			.Clk(Clk),
			.Clrn(Clrn),
			.Qa(Qa),
			.Qb(Qb)
			);
initial 
	begin
		Wr=5'd0;
		D=32'd666;

	end
always
begin

		#20 Clk = 0;

		#20 Clk = 1;

end
endmodule
