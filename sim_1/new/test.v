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
