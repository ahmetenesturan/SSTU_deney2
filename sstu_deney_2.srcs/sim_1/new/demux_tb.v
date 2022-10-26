`timescale 1ns / 1ps

module demux_tb;

    reg in;
    reg [1:0] switch;
    wire [3:0] out;
    
    DEMUX dmx(.D(in), .S(switch), .O(out));
    
    integer i;

    
    initial begin
        for(i=0;i<4;i=i+1) begin
            switch = i;
            in = 0;
            #20;
            in = 1;
            #20;
        end
        $finish;
    end

endmodule
