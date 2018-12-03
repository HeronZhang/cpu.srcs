module CONUNIT(Op,Func,Z,Regrt,Se,Wreg,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg,V,Mfc0,Mtc0,Cause,Wcau,Wsta,Sta,Wepc,Intr,Inta);
input [5:0]Op,Func;
input Z,V;
output Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg;
output [1:0]Pcsrc,Aluc,Mfc0;

wire R_type=~|Op;
wire i_add=R_type&(Func==6'b100000);
wire i_sub=R_type&(Func==6'b100010);
wire i_and=R_type&(Func==6'b100100);
wire i_or=R_type&(Func==6'b100101);
wire i_addi=(Op==6'b001000);
wire i_andi=(Op==6'b001100);
wire i_ori=(Op==6'b001101);
wire i_lw=(Op==6'b100011);
wire i_sw=(Op==6'b101011);
wire i_beq=(Op==6'b001000);
wire i_bne=(Op==6'b000101);
wire i_j=(Op==6'b000010);

assign Regrt=~R_type;
assign Se=~(i_addi||i_ori);
assign Wreg=R_type||i_addi||i_andi||i_ori||i_lw;
assign Aluqb=~(R_type||i_beq||i_bne);
assign Wmem=i_sw;
assign Aluc[1]=i_and||i_addi||i_or||i_ori;
assign Aluc[0]=i_sub||i_beq||i_bne||i_or||i_ori;
assign Pcsrc[1]=i_j;
assign Pcsrc[0]=i_beq&Z||i_bne&~Z;
assign Reg2reg=i_lw;
endmodule
