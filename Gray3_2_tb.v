`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/03 21:36:41
// Design Name: 
// Module Name: Gray3_2_tb
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


module Gray3_2_tb( );
    reg rst;
    reg [2:0]two;
    wire [2:0]gray;
    
    Gray3_2 out(
        .rst(rst),
        .two(two),
        .gray(gray)
    );
    
    initial begin
        rst = 1;
        two = 3'b000;
        #10 rst = 0;
        #20 rst = 1;
        #20 two = 3'b001;
        #20 two = 3'b010;
        #20 two = 3'b011;
        #20 two = 3'b100;
        #20 two = 3'b101;
        #20 two = 3'b110;
        #20 two = 3'b111;
    end
endmodule
