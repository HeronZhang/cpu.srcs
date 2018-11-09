<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> parent of b5c4b63... ..
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

<<<<<<< HEAD
=======
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/07 23:17:56
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


>>>>>>> parent of a621d5b... 整理
module test(
    );
reg [31:0]X,Y;
reg [1:0]Aluc;
wire [31:0]R;
wire Z;

<<<<<<< HEAD
=======
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/11/07 23:17:56
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test(
    );
reg [31:0]X,Y;
reg [1:0]Aluc;
wire [31:0]R;
wire Z;

>>>>>>> parent of a621d5b... 整理
=======
>>>>>>> parent of a621d5b... 整理
ALU uut(.X(X),
		.Y(Y),
		.Aluc(Aluc),
		.R(R),
		.Z(Z));
initial begin
	X=32'b1100;
	Y=32'b1010;
	Aluc=2'b10;
=======
		#20 Clk = 1;
>>>>>>> parent of b5c4b63... ..

end
endmodule
