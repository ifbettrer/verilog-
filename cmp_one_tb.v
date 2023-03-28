`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/29 08:39:58
// Design Name: 
// Module Name: cmp_one_tb
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


module cmp_one_tb();
    reg a, b;
    wire greater,equal,less;
    cmp_one out(
      .a(a),
      .b(b),
      .greater(greater),
      .equal(equal),
      .less(less)
    );
    
    initial begin
        a= 0'b0;
        b= 0'b0;
    end
    always #10 begin
        a = ($random) % 2;
        b = ($random) % 2;
    end
endmodule
