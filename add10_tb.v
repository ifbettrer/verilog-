`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/02 13:55:54
// Design Name: 
// Module Name: adder10_tb
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


module adder10_tb( );
    reg [3:0] a, b;
    reg cin;
    wire [3:0]res;
    wire cout;
    adder10 out(
        .a(a),
        .b(b),
        .cin(cin),
        .res(res),
        .cout(cout)
    );
    
    initial begin
        a = 4'b0000;
        b = 4'b0000;
        cin = 1'b0;
    end
    always #10 begin
        a = {$random}%10;
        b = {$random}%10;
        cin = ($random) %2;
    end
endmodule
