`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/02 22:50:05
// Design Name: 
// Module Name: num_decoder7_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module num_decoder7_tb( );
    reg LE,BL,LT;
    reg [3:0]D;
    wire [6:0]L;
    num_decoder7 out(
       .LE(LE), .BL(BL), .LT(LT),
       .D(D),
       .L(L)
    );
    initial begin
       LE = 1'b0;
       BL = 1'b0;
       LT = 1'b0;
       D = 4'b0000;
    end
    always #10 begin
        LE = 0;
        BL = 1;
        LT = 1;
        D = ($random)%16;
    end
endmodule
