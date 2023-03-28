`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/02 13:08:33
// Design Name: 
// Module Name: adder10
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


module adder10(
    input [3:0]a, b,
    input cin,
    output [3:0]res,
    output cout
    );
    wire [3:0]sum1, sum2; wire c, d;
    reg [3:0]res; reg cout;
    assign {c, sum1} = a + b + cin;
    assign {d, sum2} = sum1 + 6;
    always @(*) begin
        if(sum1 > 9|c == 1) //需要修正的
            begin
            res = sum2;
            cout = c + d;  //修正时可能会产生进位
            end
        else
            begin
            res = sum1;
            cout = 0;
            end
    end
    
endmodule
