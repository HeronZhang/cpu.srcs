module FETCHINST(Clk,instruction,PCsrc);
    input Clk;
    input [31:0]PCsrc;
    output [31:0]instruction;
    wire [31:0]pcTaddinst,addTmuxaddr,brTmux,jumpTmux,muxTpc;
    //寄存器变量
    wire En,Clrn;
    assign En=1;
    assign Clrn=1;
    D_FFEC32 PC(muxTpc,Clk,En,Clrn,pcTaddinst);

    wire [31:0]X;
    assign X=32'd4;
    CLA_32 ADD(X,pcTaddinst,,addTmuxaddr,);

    INSTMEM INST_ROM(pcTaddinst,instruction);

    Br_Jump_Addr br(instruction,brTmux,addTmuxaddr,jumpTmux);

    MUX3X1 mux(PCsrc,addTmuxaddr,brTmux,jumpTmux,muxTpc);
endmodule
    
