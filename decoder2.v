`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 18:18:11
// Design Name: 
// Module Name: decoder2
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


module decoder2(
    input D,  //低电平有效
    input A,
    input B,
    output [3:0]Y
    );
    assign Y[3] = ~D&A&B;
    assign Y[2] = ~D&A&~B;
    assign Y[1] = ~D&~A&B;
    assign Y[0] = ~D&~A&~B;
endmodule
