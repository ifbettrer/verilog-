`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/03 22:34:51
// Design Name: 
// Module Name: adder10_4
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


module adder10_4(
    input [3:0]A1, A2, A3, A4,
    input [3:0]B1, B2, B3, B4,
    input cin,
    output [3:0]s1, s2, s3, s4,
    output co
    );
    wire [3:0]c;
    adder10_0 u1(A1, B1, cin, s1, c[0]);
    adder10_0 u2(A2, B2, c[0], s2, c[1]);
    adder10_0 u3(A3, B3, c[1], s3, c[2]);
    adder10_0 u4(A4, B4, c[2], s4, c[3]);
    assign co = c[3];
endmodule
