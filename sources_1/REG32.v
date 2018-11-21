module REG32(D,En,Clk,
Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19
,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0);
    input[31:0]D,En;
    input Clk;
    output [31:0] Q31,Q30,Q29,Q28,Q27,Q26,Q25,Q24,Q23,Q22,Q21,Q20,Q19
,Q18,Q17,Q16,Q15,Q14,Q13,Q12,Q11,Q10,Q9,Q8,Q7,Q6,Q5,Q4,Q3,Q2,Q1,Q0;
    D_FFEC32 q31 (D,Clk,En[31],Q31);
    D_FFEC32 q30 (D,Clk,En[30],Q30);
    D_FFEC32 q29 (D,Clk,En[29],Q29);
    D_FFEC32 q28 (D,Clk,En[28],Q28);
    D_FFEC32 q27 (D,Clk,En[27],Q27);
    D_FFEC32 q26 (D,Clk,En[26],Q26);
    D_FFEC32 q25 (D,Clk,En[25],Q25);
    D_FFEC32 q24 (D,Clk,En[24],Q24);
    D_FFEC32 q23 (D,Clk,En[23],Q23);
    D_FFEC32 q22 (D,Clk,En[22],Q22);
    D_FFEC32 q21 (D,Clk,En[21],Q21);
    D_FFEC32 q20 (D,Clk,En[20],Q20);
    D_FFEC32 q19 (D,Clk,En[19],Q19);
    D_FFEC32 q18 (D,Clk,En[18],Q18);
    D_FFEC32 q17 (D,Clk,En[17],Q17);
    D_FFEC32 q16 (D,Clk,En[16],Q16);
    D_FFEC32 q15 (D,Clk,En[15],Q15);
    D_FFEC32 q14 (D,Clk,En[14],Q14);
    D_FFEC32 q13 (D,Clk,En[13],Q13);
    D_FFEC32 q12 (D,Clk,En[12],Q12);
    D_FFEC32 q11 (D,Clk,En[11],Q11);
    D_FFEC32 q10 (D,Clk,En[10],Q10);
    D_FFEC32 q9 (D,Clk,En[9],Q9);
    D_FFEC32 q8 (D,Clk,En[8],Q8);
    D_FFEC32 q7 (D,Clk,En[7],Q7);
    D_FFEC32 q6 (D,Clk,En[6],Q6);
    D_FFEC32 q5 (D,Clk,En[5],Q5);
    D_FFEC32 q4 (D,Clk,En[4],Q4);
    D_FFEC32 q3 (D,Clk,En[3],Q3);
    D_FFEC32 q2 (D,Clk,En[2],Q2);
    D_FFEC32 q1 (D,Clk,En[1],Q1);
    D_FFEC32 q0 (D,Clk,En[0],Q0);
endmodule