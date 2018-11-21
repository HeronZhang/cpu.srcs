module REGFILE(Ra,Rb,D,Wr,We,Clk,Qa,Qb);
    input [4:0]Ra,Rb,Wr;
    input [31:0]D;
    input We,Clk;
    output [31:0]Qa,Qb;

    wire[31:0]Y_mux,
    Q31_reg32,
    Q30_reg32,
    Q29_reg32,
    Q28_reg32,
    Q27_reg32,
    Q26_reg32,
    Q25_reg32,
    Q24_reg32,
    Q23_reg32,
    Q22_reg32,
    Q21_reg32,
    Q20_reg32,
    Q19_reg32,
    Q18_reg32,
    Q17_reg32,
    Q16_reg32,
    Q15_reg32,
    Q14_reg32,
    Q13_reg32,
    Q12_reg32,
    Q11_reg32,
    Q10_reg32,
    Q9_reg32,
    Q8_reg32,
    Q7_reg32,
    Q6_reg32,
    Q5_reg32,
    Q4_reg32,
    Q3_reg32,
    Q2_reg32,
    Q1_reg32,
    Q0_reg32;
    DEC5T32E dec(Wr,We,Y_mux);

    REG32 reg32(D,Y_mux,Clk,
    Q31_reg32,
    Q30_reg32,
    Q29_reg32,
    Q28_reg32,
    Q27_reg32,
    Q26_reg32,
    Q25_reg32,
    Q24_reg32,
    Q23_reg32,
    Q22_reg32,
    Q21_reg32,
    Q20_reg32,
    Q19_reg32,
    Q18_reg32,
    Q17_reg32,
    Q16_reg32,
    Q15_reg32,
    Q14_reg32,
    Q13_reg32,
    Q12_reg32,
    Q11_reg32,
    Q10_reg32,
    Q9_reg32,
    Q8_reg32,
    Q7_reg32,
    Q6_reg32,
    Q5_reg32,
    Q4_reg32,
    Q3_reg32,
    Q2_reg32,
    Q1_reg32,
    Q0_reg32);

    MUX32X32 select1(Q0_reg32,
    Q1_reg32,
    Q2_reg32,
    Q3_reg32,
    Q4_reg32,
    Q5_reg32,
    Q6_reg32,
    Q7_reg32,
    Q8_reg32,
    Q9_reg32,
    Q10_reg32,
    Q11_reg32,
    Q12_reg32,
    Q13_reg32,
    Q14_reg32,
    Q15_reg32,
    Q16_reg32,
    Q17_reg32,
    Q18_reg32,
    Q19_reg32,
    Q20_reg32,
    Q21_reg32,
    Q22_reg32,
    Q23_reg32,
    Q24_reg32,
    Q25_reg32,
    Q26_reg32,
    Q27_reg32,
    Q28_reg32,
    Q29_reg32,
    Q30_reg32,
    Q31_reg32,Ra,Qa);

    MUX32X32 select2(Q0_reg32,
    Q1_reg32,
    Q2_reg32,
    Q3_reg32,
    Q4_reg32,
    Q5_reg32,
    Q6_reg32,
    Q7_reg32,
    Q8_reg32,
    Q9_reg32,
    Q10_reg32,
    Q11_reg32,
    Q12_reg32,
    Q13_reg32,
    Q14_reg32,
    Q15_reg32,
    Q16_reg32,
    Q17_reg32,
    Q18_reg32,
    Q19_reg32,
    Q20_reg32,
    Q21_reg32,
    Q22_reg32,
    Q23_reg32,
    Q24_reg32,
    Q25_reg32,
    Q26_reg32,
    Q27_reg32,
    Q28_reg32,
    Q29_reg32,
    Q30_reg32,
    Q31_reg32,Rb,Qb);

endmodule