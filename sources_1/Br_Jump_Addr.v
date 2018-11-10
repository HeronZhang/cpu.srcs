module Br_Jump_Addr(instruction,brTmux,
                       addTmuxaddr,jumpTmux);

    input [31:0]instruction,addTmuxaddr;
    output [31:0]brTmux,jumpTmux;
    wire [31:0]signext;
    EXT ext(instruction[15:0],signext,0);
    assign brTmux=addTmuxaddr+(signext<<2);
    assign jumpTmux[31:28]=addTmuxaddr[31:28];
    assign jumpTmux[27:2]=instruction[25:0];
    assign jumpTmux[1:0]=2'b00;
endmodule