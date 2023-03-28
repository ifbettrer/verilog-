`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 09:29:05
// Design Name: 
// Module Name: detector_tb
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


module detector_tb( );
    reg clk, rst_n;
    reg din;
    wire dout;
    wire [7:0]seg;
    detector out(
        .clk(clk),
        .rst_n(rst_n),
        .din(din),
        .dout(dout),
        .seg(seg)
    );
    
    initial begin
        clk = 1'b0;
        rst_n = 0;
        #20;
        rst_n = 1'b1;
        send_data;
    end
    always #10 clk = ~clk;
    
    task send_data;
        integer i;
        begin
            for(i = 0; i < 8; i= i+ 1)
                begin @(posedge clk);
                  din = {$random}%2;
                end
             din = 0;
        end
    endtask
endmodule
