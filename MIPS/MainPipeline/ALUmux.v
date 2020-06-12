module ALUmux(Y, D0, D1, S);

    output [31:0] Y;
    input [31:0] D0, D1;
    input S;

    mux21 m1(Y[0], D0[0], D1[0], S);
    mux21 m2(Y[1], D0[1], D1[1], S);
    mux21 m3(Y[2], D0[2], D1[2], S);
    mux21 m4(Y[3], D0[3], D1[3], S);
    mux21 m5(Y[4], D0[4], D1[4], S);
    mux21 m6(Y[5], D0[5], D1[5], S);
    mux21 m7(Y[6], D0[6], D1[6], S);
    mux21 m8(Y[7], D0[7], D1[7], S);
    mux21 m9(Y[8], D0[8], D1[8], S);
    mux21 m10(Y[9], D0[9], D1[9], S);
    mux21 m11(Y[10], D0[10], D1[10], S);
    mux21 m12(Y[11], D0[11], D1[11], S);
    mux21 m13(Y[12], D0[12], D1[12], S);
    mux21 m14(Y[13], D0[13], D1[13], S);
    mux21 m15(Y[14], D0[14], D1[14], S);
    mux21 m16(Y[15], D0[15], D1[15], S);
    mux21 m17(Y[16], D0[16], D1[16], S);
    mux21 m18(Y[17], D0[17], D1[17], S);
    mux21 m19(Y[18], D0[18], D1[18], S);
    mux21 m20(Y[19], D0[19], D1[19], S);
    mux21 m21(Y[20], D0[20], D1[20], S);
    mux21 m22(Y[21], D0[21], D1[21], S);
    mux21 m23(Y[22], D0[22], D1[22], S);
    mux21 m24(Y[23], D0[23], D1[23], S);
    mux21 m25(Y[24], D0[24], D1[24], S);
    mux21 m26(Y[25], D0[25], D1[25], S);
    mux21 m27(Y[26], D0[26], D1[26], S);
    mux21 m28(Y[27], D0[27], D1[27], S);
    mux21 m29(Y[28], D0[28], D1[28], S);
    mux21 m30(Y[29], D0[29], D1[29], S);
    mux21 m31(Y[30], D0[30], D1[30], S);
    mux21 m32(Y[31], D0[31], D1[31], S);

endmodule