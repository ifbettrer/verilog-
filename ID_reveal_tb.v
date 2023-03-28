`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/09 23:08:23
// Design Name: 
// Module Name: ID_reveal_tb
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


module ID_reveal_tb( );
    reg clk;
    wire [7:0]led;
    wire [2:0]del;
    ID_reveal out(
        .clk(clk),
        .led(led),
        .del(del)
    );
    
    initial begin
       clk = 1'b0;
    end
    
    always #10 begin
        clk = ~clk;
    end
endmodule
