`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/28 23:57:52
// Design Name: 
// Module Name: cmp_one
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


module cmp_one(
    input a,
    input b,
    output greater,
    output equal,
    output less
    );
    
    wire h1, h2, h3;
    assign equal = ~(a^b);
    assign greater = a& ~b;
    xnor G1(h1, a, b);
    not  G2(h2, b);
    and  G3(h3, a, h2);
    assign less = ~(h1|h3);
endmodule
