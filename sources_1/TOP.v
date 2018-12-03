module TOP(Clk);
input Clk;
wire Z,Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg,W4,W8,W12,W13,W14;
wire [31:0]instrunction;
wire [1:0]PCsrc,Aluc,Mfc0,W6,W11;
wire [31:0]Qa,Qb,Y,R,extimm,muxtextra,Dout,D,Wr,sta,cau,epc,W1,W2,W3,W5,W7,W9,Qb,W15,W16,W17,base;

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
                    Reg2reg,V,Mfc0,W6,W7,W8,W4,W3,W13,W15,W14);

FETCHINST fetchcircuit(Clk,instrunction,PCsrc,W9,W16,epc,base);
MUX2X5 muxreg(instrunction[15:11],instrunction[20:16],Regrt,Wr);
MUX2X32 muxalu(Qb,extimm,Aluqb,Y);
ALU alunit(Qa,Y,Aluc,R,Z,V);
EXT ext(instrunction[15:0],extimm,Se);
DATAMEM mem(R,Qb,Clk,Wmem,Dout);
MUX2X32 muxmem(R,Dout,Reg2reg,muxTreg);
REGFILE regs(instrunction[25:21],instrunction[20:16],D,Wr,Wreg,Clk,Qa,Qb); 
//加异常
MUX4X32 extra(Mfc0,muxtextra,sta,cau,epc,D);
D_FFEC32 Cause(W5,Clk,W8,cau);
D_FFEC32 Status(W2,Clk,W4,W3);
MUX2X32 M1(W6,W7,W1,W5);
MUX2X32 M2(W14,W16,W9,W15);
MUX2X32 M3(W12,W15,Qb,W17);
D_FFEC32 EPC(W17,Clk,W13,epc)
endmodule