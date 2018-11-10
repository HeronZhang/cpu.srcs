module INSTMEM(Addr,Inst);
    input [31:0]Addr;
    output [31:0]Inst;
    wire [31:0] Rom[31:0];
    assign Rom[5'h00]=32'h8C020000;
    assign Rom[5'h01]=32'h8C030001;
    assign Rom[5'h02]=32'h00432020;
    assign Rom[5'h03]=32'hXXXXXXXX;
    assign Rom[5'h04]=32'hXXXXXXXX;
    assign Rom[5'h05]=32'hXXXXXXXX;
    assign Rom[5'h06]=32'hXXXXXXXX;
    assign Rom[5'h07]=32'hXXXXXXXX;
    assign Rom[5'h08]=32'hXXXXXXXX;
    assign Rom[5'h09]=32'hXXXXXXXX;
    assign Rom[5'h0a]=32'hXXXXXXXX;
    assign Rom[5'h0b]=32'hXXXXXXXX;
    assign Rom[5'h0c]=32'hXXXXXXXX;
    assign Rom[5'h0d]=32'hXXXXXXXX;
    assign Rom[5'h0e]=32'hXXXXXXXX;
    assign Rom[5'h0f]=32'hXXXXXXXX;
    assign Rom[5'h10]=32'hXXXXXXXX;
    assign Rom[5'h11]=32'hXXXXXXXX;
    assign Rom[5'h12]=32'hXXXXXXXX;
    assign Rom[5'h13]=32'hXXXXXXXX;
    assign Rom[5'h14]=32'hXXXXXXXX;
    assign Rom[5'h15]=32'hXXXXXXXX;
    assign Rom[5'h16]=32'hXXXXXXXX;
    assign Rom[5'h17]=32'hXXXXXXXX;
    assign Rom[5'h18]=32'hXXXXXXXX;
    assign Rom[5'h19]=32'hXXXXXXXX;
    assign Rom[5'h1a]=32'hXXXXXXXX;
    assign Rom[5'h1b]=32'hXXXXXXXX;
    assign Rom[5'h1c]=32'hXXXXXXXX;
    assign Rom[5'h1d]=32'hXXXXXXXX;
    assign Rom[5'h1e]=32'hXXXXXXXX;
    assign Rom[5'h1f]=32'hXXXXXXXX;

    assign Inst=Rom[Addr[6:2]];
endmodule


