`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/04 00:00:17
// Design Name: 
// Module Name: adder10_4_tb
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


module adder10_4_tb( );
    reg [3:0]A1, A2, A3, A4;
    reg [3:0]B1, B2, B3, B4;
    reg cin;
    wire [3:0]s1, s2, s3, s4;
    wire co;
    
    adder10_4 out(
        .A1(A1), .A2(A2), .A3(A3), .A4(A4),
        .B1(B1), .B2(B2), .B3(B3), .B4(B4),
        .cin(cin),
        .s1(s1), .s2(s2), .s3(s3), .s4(s4),
        .co(co) 
    );
    initial begin
        A1 = 4'b0000; A2 = 4'b0000; A3 = 4'b0000; A4 = 4'b0000;
        B1 = 4'b0000; B2 = 4'b0000; B3 = 4'b0000; B4 = 4'b0000;
        cin = 1'b0;
    end
    
    always #10 begin
        A1 = {$random}%10; A2 = {$random}%10; A3 = {$random}%10; A4 = {$random}%10;
        B1 = {$random}%10; B2 = {$random}%10; B3 = {$random}%10; B4 = {$random}%10;
        cin = {$random}%2;
    end
endmodule

