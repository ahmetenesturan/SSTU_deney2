`timescale 1ns / 1ps

module DECODER(

input [3:0] in,
output reg [15:0] out);


always @(in) begin

    case(in)
    4'b0000 : out = 16'b0000000000000001;
    4'b0001 : out = 16'b0000000000000010;
    4'b0010 : out = 16'b0000000000000100;
    4'b0011 : out = 16'b0000000000001000;
    4'b0100 : out = 16'b0000000000010000;
    4'b0101 : out = 16'b0000000000100000;
    4'b0110 : out = 16'b0000000001000000;
    4'b0111 : out = 16'b0000000010000000;
    4'b1000 : out = 16'b0000000100000000;
    4'b1001 : out = 16'b0000001000000000;
    4'b1010 : out = 16'b0000010000000000;
    4'b1011 : out = 16'b0000100000000000;
    4'b1100 : out = 16'b0001000000000000;
    4'b1101 : out = 16'b0010000000000000;
    4'b1110 : out = 16'b0100000000000000;
    4'b1111 : out = 16'b1000000000000000;
    default : out = 16'b0000000000000000;
    endcase
end
endmodule


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