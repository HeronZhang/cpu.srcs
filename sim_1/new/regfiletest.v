module test(
    );
    reg [4:0]Ra,Rb,Wr;
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
	
		We=1;
		Clrn=1;
		D=32'd666;
		Ra=5'd3;
		Wr=5'd3;
		#100
		D=32'h666;
		Rb=5'd4;
		Wr=5'd4;

	end
always
begin

		#20 Clk = 0;

		#20 Clk = 1;

end
endmodule
