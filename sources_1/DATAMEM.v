module DATAMEM(Addr,Din,Clk,We,Dout);
    input [31:0]Addr,Din;
    input Clk,We;
    output [31:0]Dout;
    reg[31:0] Ram[31:0];
    assign Dout=Ram[Addr[4:0]];
    always@(posedge Clk)
    begin
        if(We)
            Ram[Addr[4:0]]<=Din;
    end
    integer i;
    initial
    begin
			for ( i = 0 ; i <= 31 ; i = i + 1) Ram [i] = i * i;
    end
endmodule    
    
        