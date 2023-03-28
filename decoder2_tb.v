`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 20:52:54
// Design Name: 
// Module Name: decoder2_tb
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


module decoder2_tb();
    reg D, A, B;
    wire [3:0]Y;
    
    decoder2 out(
        .D(D),
        .A(A),
        .B(B),
        .Y(Y)
    );
    initial begin
        D = 1'b0;
        A = 1'b0;
        B = 1'b0;
    end
    always #10 begin
        D = ($random)%2;
        A = ($random)%2;
        B = ($random)%2;
    end
endmodule
