module TOP(Clk);
input Clk;
wire Z,Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg;
wire [31:0]instrunction;
wire [1:0]Pcsrc,Aluc;
wire [31:0]Qa,Qb,X,Y,R,extimm;
CONUNIT controlunit(instrunction[31:26],
                    instrunction[5:0],
                    Z,
                    Regrt,
                    Se,
                    Wreg,
                    Aluqb,
                    Aluc,
                    Wmem,
                    Pcsrc,
                    Reg2reg);

FETCHINST fetchcircuit(Clk,instrunction,PCsrc);
MUX2X1 muxreg(instrunction[20:16],instrunction[15:11],Regrt);
MUX2X1 muxalu(Qb,extimm,Aluqb,Y);
ALU alunit(X,Y,Aluc,R,Z);
EXT ext(instrunction[15:0],extimm,Se)