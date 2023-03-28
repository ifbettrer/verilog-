`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/03 17:23:37
// Design Name: 
// Module Name: Gray3_2
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


module Gray3_2(
    input rst,
    input [2:0]two,
    output reg [2:0]gray
    );
    reg [2:0]t;
    
    always @(*)
    begin
        if(!rst) //无信号
          begin
              gray = 3'b000;
              t = 3'b000;
          end
        else
          begin
              t = two>>1;  //右移一位，得到对应左边的数
              gray = t^two; //每一位与左边那一位异或，得到格雷码
          end
    end
endmodule
