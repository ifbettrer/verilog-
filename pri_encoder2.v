`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 10:43:36
// Design Name: 
// Module Name: pri_encoder2
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


module pri_encoder2(
    input [3:0]I,
    output [2:0]Y
    );
    
    reg [2:0]Y;
    always @ (I) begin
        if(I[3])
            Y = 3'b011;
        else if(I[2])
            Y = 3'b010;
        else if(I[1])
            Y = 3'b001;
        else if(I[0])
            Y = 3'b000;
        else           //什么都没有检测到的情况
            Y = 3'b111;
    end
endmodule
