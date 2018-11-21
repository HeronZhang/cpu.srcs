module TOP(Clk);
input Clk;
wire Z,Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg;
wire [31:0]instrunction;
wire [1:0]PCsrc,Aluc;
wire [31:0]Qa,Qb,Y,R,extimm,Dout,muxTreg,Wr;
CONUNIT controlunit(instrunction[31:26],
                    instrunction[5:0],
                    Z,
                    Regrt,
                    Se,
                    Wreg,
                    Aluqb,
                    Aluc,
                    Wmem,
                    PCsrc,
                    Reg2reg);

FETCHINST fetchcircuit(Clk,instrunction,PCsrc);
MUX2X5 muxreg(instrunction[20:16],instrunction[15:11],Regrt,Wr);
MUX2X32 muxalu(Qb,extimm,Aluqb,Y);
ALU alunit(Qa,Y,Aluc,R,Z);
EXT ext(instrunction[15:0],extimm,Se);
DATAMEM mem(R,Qb,Clk,Wmem,Dout);
MUX2X32 muxmem(R,Dout,Reg2reg,muxTreg);
REGFILE regs(instrunction[25:21],instrunction[20:16],muxTreg,Wr,Wreg,Clk,Qa,Qb); 
endmodule