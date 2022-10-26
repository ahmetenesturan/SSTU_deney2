`timescale 1ns / 1ps




module DEMUX(input D,
            input [1:0] S,
            output [3:0] O);
            
            wire [1:0] input_nots;
            wire [3:0] enables;
            
            genvar i;
            
            generate
                for(i = 0; i < 2; i = i + 1)begin
                    not_gate input_not(S[i], input_nots[i]);
                end
            endgenerate
            
            and_gate input_and_0(input_nots[1], input_nots[0], enables[0]);
            and_gate input_and_1(input_nots[1], S[0], enables[1]);
            and_gate input_and_2(S[1], input_nots[0], enables[2]);
            and_gate input_and_3(S[1], S[0], enables[3]);
            
            generate
                for(i = 0; i < 4; i = i + 1)begin
                    TRI tri_buff(.i(D), .e(enables[i]), .o(O[i]));
                end
            endgenerate
            
endmodule