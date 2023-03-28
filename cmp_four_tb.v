`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/01 18:18:41
// Design Name: 
// Module Name: cmp_four_tb
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


module cmp_four_tb( );
    reg [3:0]A;
    reg [3:0]B;
    wire great, equal, less;
    
    cmp_four out(
        .A(A),
        .B(B),
        .great(great),
        .equal(equal),
        .less(less)
    );
    initial begin
        A = 1'b0;
        B = 1'b0;
    end
    always #10 begin
        A[3] = ($random)%2;
        A[2] = ($random)%2;
        A[1] = ($random)%2;
        A[0] = ($random)%2;
        B[3] = ($random)%2;
        B[2] = ($random)%2;
        B[1] = ($random)%2;
        B[0] = ($random)%2;
    end
endmodule
