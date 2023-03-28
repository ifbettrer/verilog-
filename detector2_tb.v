`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 11:31:22
// Design Name: 
// Module Name: detector2_tb
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


module detector2_tb( );
    reg clk, rst_n;
    reg [7:0]din;
    wire [7:0]led;
    wire [7:0]seg;
    
    detector2 u0(
        .clk(clk),
        .rst_n(rst_n),
        .din(din),
        .led(led),
        .seg(seg)
    );
    
    initial begin
        din = 8'b11001110;  //两个结果分别是2、3
        clk = 1;
        rst_n = 1;
    end
    
    always #10 clk = ~clk;
    /*always #100 begin
        din = {$random};
    end*/
endmodule
