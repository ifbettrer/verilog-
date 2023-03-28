`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 21:14:35
// Design Name: 
// Module Name: decoder10
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


module decoder10(
    input WD,
    input [3:0]A,
    output [9:0]Y
    );
    
    assign Y[0] = ~WD&~A[3]&~A[2]&~A[1]&~A[0];
    assign Y[1] = ~WD&~A[3]&~A[2]&~A[1]&A[0];
    assign Y[2] = ~WD&~A[3]&~A[2]&A[1]&~A[0];
    assign Y[3] = ~WD&~A[3]&~A[2]&A[1]&A[0];
    assign Y[4] = ~WD&~A[3]&A[2]&~A[1]&~A[0];
    assign Y[5] = ~WD&~A[3]&A[2]&~A[1]&A[0];
    assign Y[6] = ~WD&~A[3]&A[2]&A[1]&~A[0];
    assign Y[7] = ~WD&~A[3]&A[2]&A[1]&A[0];
    assign Y[8] = ~WD&A[3]&~A[2]&~A[1]&~A[0];
    assign Y[9] = ~WD&A[3]&~A[2]&~A[1]&A[0];
endmodule
