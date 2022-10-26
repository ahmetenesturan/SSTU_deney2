`timescale 1ns / 1ps
module Top_module_tb;
    reg [7:0] sw;
    reg [3:0] btn;
    wire [7:0] led;
    wire [6:0] cat;
    wire [3:0] an;
    wire dp;
    
    top_module uut(.LED(led),.DP(dp),.CAT(cat),.SW(sw));
//        top_module test(sw,led,cat,dp);
    
    initial begin;
   sw = 4'b0000;#10;
   sw = 4'b0001;#10;
   sw = 4'b0010;#10;
   sw = 4'b0011;#10;
   sw = 4'b0100;#10;
   sw = 4'b0101;#10;
   sw = 4'b0110;#10;
   sw = 4'b0111;#10;
   sw = 4'b1000;#10;
   sw = 4'b1001;#10;
   sw = 4'b1010;#10;
   sw = 4'b1011;#10;
   sw = 4'b1100;#10;
   sw = 4'b1101;#10;
   sw = 4'b1110;#10;
   sw = 4'b1111;#10;
    $finish;
    end  
endmodule