`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/09 23:58:57
// Design Name: 
// Module Name: Name_reveal_tb
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


module Name_reveal_tb( );
    reg clk;
    wire [3:0]keyc;
    wire [15:0]keyr;
    
    Name_reveal out(
        .clk(clk),
        .keyc(keyc),
        .keyr(keyr)
    );
    
    initial begin
        clk = 1'b0;
    end
    
    always #10 begin
        clk = ~clk;
    end
endmodule
