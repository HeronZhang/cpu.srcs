module CONUNIT(Op,Func,Z,Regrt,Se,Wreg,Aluqb,Aluc,Wmem,Pcsrc,Reg2reg);
input [5:0]Op,Func;
input Z;
output Regrt,Se,Wreg,Aluqb,Wmem,Reg2reg;
output [1:0]Pcsrc,Aluc;

wire R_type=~|Op;
wire i_add=R_type&(Func==6'b100000)?1:0;
wire i_sub=R_type&(Func==6'b100010)?1:0;
wire i_and=R_type&(Func==6'b100100)?1:0;
wire i_or=R_type&(Func==6'b100101)?1:0;
wire i_addi=(Op==6'b001000)?1:0;
wire i_andi=(Op==6'b001100)?1:0;
wire i_ori=(Op==6'b001101)?1:0;
wire i_lw=(Op==6'b100011)?1:0;
wire i_sw=(Op==6'b101011)?1:0;
wire i_beq=(Op==6'b001000)?1:0;
wire i_bne=(Op==6'b000101)?1:0;
wire i_j=(Op==6'b000010)?1:0;

assign Regrt=~R_type;
assign Se=~(i_addi||i_ori);
assign Wreg=R_type||i_addi||i_andi||i_ori||i_lw;
assign Aluqb=R_type||i_beq||i_bne;
assign Wmem=i_sw;
assign Aluc[1]=i_and||i_addi||i_or||i_ori;
assign Aluc[0]=i_sub||i_beq||i_or||i_ori;
assign Pcsrc[1]=i_j;
assign Pcsrc[0]=i_beq&Z||i_bne&~Z;
assign Reg2reg=i_lw;
endmodule
