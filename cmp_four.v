`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 17:41:01
// Design Name: 
// Module Name: cmp_four
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


module cmp_four(A, B, great, equal, less);
    input [3:0]A;
    input [3:0]B;
    output great;
    output equal;
    output less;
    wire [3:0]g, e, l;
    cmp_one_0 u3(A[3], B[3], g[3], e[3], l[3]);
    cmp_one_0 u2(A[2], B[2], g[2], e[2], l[2]);
    cmp_one_0 u1(A[1], B[1], g[1], e[1], l[1]);
    cmp_one_0 u0(A[0], B[0], g[0], e[0], l[0]);
    
    assign equal = e[3]&e[2]&e[1]&e[0];
    assign great = (g > l)?1:0;
    assign less = ~(great|equal);
endmodule
