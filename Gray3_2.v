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
        if(!rst) //���ź�
          begin
              gray = 3'b000;
              t = 3'b000;
          end
        else
          begin
              t = two>>1;  //����һλ���õ���Ӧ��ߵ���
              gray = t^two; //ÿһλ�������һλ��򣬵õ�������
          end
    end
endmodule
