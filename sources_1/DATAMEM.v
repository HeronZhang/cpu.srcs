module DATAMEM(Addr,Din,Clk,We,Dout);
    input [31:0]Addr,Din;
    input Clk,We;
    output [31:0]Dout;
    reg[31:0] Ram[31:0];
    assign Dout=Ram[Addr[6:2]];
    always@(posedge Clk)
    begin
        if(We)
            Ram[Addr[6:2]]<=Din;
    end
    integer i;
    initial
    begin
        for(i=0;i<32;i=i+1)
          begin
            Ram[i]=0;
            end
            Ram[1]=32'd3;
            Ram[2]=32'd4;
    end
endmodule    
    
        