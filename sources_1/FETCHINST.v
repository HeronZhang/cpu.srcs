module FETCHINST(Clk,instruction,PCsrc);
    input Clk;
    input [1:0]PCsrc;
    output [31:0]instruction;
    wire [31:0]pcTaddinst,addTmuxaddr,brTmux,jumpTmux,muxTpc;

    PC  pc(muxTpc,Clk,pcTaddinst);

    wire [31:0]X;
    assign X=32'd4;
    CLA_32 ADD(X,pcTaddinst,0,addTmuxaddr,);

    INSTMEM INST_ROM(pcTaddinst,instruction);

    Br_Jump_Addr br(instruction,brTmux,addTmuxaddr,jumpTmux);

    MUX3X32 mux(PCsrc,addTmuxaddr,brTmux,jumpTmux,muxTpc);
endmodule
    
