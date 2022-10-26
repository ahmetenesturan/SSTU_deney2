`timescale 1ns / 1ps
module test_bench;
    reg [7:0] sw;
    reg [3:0] btn;
    wire [7:0] led;
    wire [6:0] cat;
    wire [3:0] an;
    wire dp;
    
    top_module uut(.led(led),.dp(dp),.cat(cat),.sw(sw), .btn(btn), .an(an));
    
    
    //decoder
    

    
//    initial begin;
//   sw = 4'b0000;#10;
//   sw = 4'b0001;#10;
//   sw = 4'b0010;#10;
//   sw = 4'b0011;#10;
//   sw = 4'b0100;#10;
//   sw = 4'b0101;#10;
//   sw = 4'b0110;#10;
//   sw = 4'b0111;#10;
//   sw = 4'b1000;#10;
//   sw = 4'b1001;#10;
//   sw = 4'b1010;#10;
//   sw = 4'b1011;#10;
//   sw = 4'b1100;#10;
//   sw = 4'b1101;#10;
//   sw = 4'b1110;#10;
//   sw = 4'b1111;#10;
//    $finish;
//    end
    
    
//encoder

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

    
    
//mux

//    integer i;
//    integer j;
    
//    initial begin
//        btn <= 4'b0;
//        sw <= 8'b0;
//        for(j=0;j<16;j=j+1) begin
//            sw[3:0] = j;
//            for(i=0;i<4;i=i+1) begin
//                btn[1:0] = i;
//                #10;
//            end
//        end
//        $finish;
//    end



//demux
    
    
//    integer i;

    
//    initial begin
//      btn = 4'b0;
//      sw = 8'b0;
//        for(i=0;i<4;i=i+1) begin
//            btn[1:0] = i;
//            sw[0] = 0;
//            #20;
//            sw[0] = 1;
//            #20;
//        end
//        $finish;
//    end
    
    
      
endmodule