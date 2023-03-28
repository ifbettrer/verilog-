`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 22:16:58
// Design Name: 
// Module Name: decoder10_tb
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


module decoder10_tb();
    reg WD;
    reg [3:0]A;
    wire [9:0]Y;
    decoder10 out(
        .WD(WD),
        .A(A),
        .Y(Y)
    );
    initial begin
        WD = 1'b0;
        A = 1'b0;
    end
    
    always #10 begin
        A[3] = ($random)%2;
        A[2] = ($random)%2;
        A[1] = ($random)%2;
        A[0] = ($random)%2;
    end
endmodule
