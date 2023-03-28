`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/03 22:07:45
// Design Name: 
// Module Name: counter2_tb
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


module counter2_tb( );
    reg clk,reset;
    wire [1:0]out;
    counter2 unt(
        .clk(clk),
        .reset(reset),
        .out(out)
    );
    
    initial begin
        clk = 1'b0;
        reset = 1'b0;
    end
    
    always #10 begin
        clk = ~clk;
        reset = ($random)%2;
    end
endmodule
