`include "Pipeline.v"

module datapath_tb;
    
    reg [31:0] Instruction;

    reg clk, reset;

    pipeline P1(clk, reset);

    initial
        begin
            clk = 1'b0;
            repeat(22) // was 8 initially
            #5 clk = ~clk; // was 2 initially
        end

    initial
        begin
            $dumpfile("datapath.vcd");
            $dumpvars(0, datapath_tb);

            reset = 1'b1;
            // Delay here for global reset to finish
            #1;
            reset = 1'b0;

            // add R4, R2, R3
            //011111 00010 00011 00100 0 100001010 0

            // ld R5, 2(R2)
            //111010 00010 00101 0000000000000010

            // std R2, 2(R5)
            //111110 00101 00010 0000000000000010

            // bc R2, R3, 2
            //010011 00010 00011 0000000000000010

            // bc R2, R2, 2
            //010011 00010 00010 0000000000000010

            // Instruction = 32'b00000000111010010001000000100000;
            // $display("\nAdd R2, R7, R9\n");

            // #4 Instruction = 32'b10001100111001010000000000000110;
            // $display("\nLW R5, 6(R7)\n");

            // #4 Instruction = 32'b10101100101000100000000000000100;
            // $display("\nSW R2, 4(R5)\n");

            // #4 Instruction = 32'b00010000010010100001100000100010;
            // $display("\nBEQ R2, R2, 2\n");
        end

endmodule 