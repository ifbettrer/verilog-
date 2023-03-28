`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/02 16:14:56
// Design Name: 
// Module Name: counter2
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


module counter2(clk, reset, out);
    input clk, reset;
    output [1:0]out;
    reg [1:0]out;
    
    always @(posedge clk)  //上升沿有效
      begin
        if(reset)  //置零信号
          out<=0;
        else
        out<=out+1'b1;
      end
endmodule
