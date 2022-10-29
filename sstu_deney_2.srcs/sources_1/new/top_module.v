`timescale 1ns / 1ps

module top_module(
    input [7:0] sw,
    input [3:0] btn,
    output  [7:0] led,
    output  [6:0] cat,
    output  [3:0] an,
    output  dp
    );
    
    //top module for decoder
    
    
    assign an = 4'b1110;
    wire [15:0] temp;
    assign dp = temp[15];
    assign cat = temp[14:8];
    assign led = temp[7:0];
    
    DECODER decoder1(sw[3:0],temp);
    
    
    
    //top module for priority encoder
    
//    ENCODER encoder1(sw[3:0],led[1:0],led[7]);
    
    //top module for mux
    
    //MUX mux_top(.D(sw[3:0]), .S(btn[1:0]), .O(led[0]));
    
    //top module for demux
    
    //DEMUX demux_top(.D(sw[0]), .S(btn[1:0]), .O(led[3:0]));
    
    
endmodule

