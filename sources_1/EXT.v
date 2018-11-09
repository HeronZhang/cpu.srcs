module EXT(in,out,Sext)
input[15:0]in;
input Sext;
output [31:0]out;
always @(*)
begin
    out[0:15]=in;
    if(Sext==1)
        out[31:16]=16'd0;
    else
        if(in[15]==1)
            out[31:16]=16'hffff;
        else
            out[31:16]=16'h0000;
end
endmodule