<<<<<<< HEAD
<<<<<<< HEAD
module test(
    );
reg [31:0]D;
reg En,Clk,Clrn;
wire [31:0]Q,Qn;

D_FFEC32 uut(.D(D),
			.Clk(Clk),
			.En(En),
			.Clrn(Clrn),
			.Q(Q),
			.Qn(Qn),
			);
initial 
	begin
<<<<<<< HEAD
<<<<<<< HEAD
		D=32'h666;
		En=1;
		Clrn=0;
=======
		Wr=5'd0;
		D=32'd666;

>>>>>>> parent of 0dbd80d... REGFILE测试
=======
		Wr=5'd0;
		D=32'd666;

>>>>>>> parent of 0dbd80d... REGFILE测试
	end
always
begin
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
ALU uut(.X(X),
		.Y(Y),
		.Aluc(Aluc),
		.R(R),
		.Z(Z));
initial begin
	X=32'b1100;
	Y=32'b1010;
	Aluc=2'b10;

end

endmodule
