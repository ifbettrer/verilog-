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
    
    always @(posedge clk)  //��������Ч
      begin
        if(reset)  //�����ź�
          out<=0;
        else
        out<=out+1'b1;
      end
endmodule
