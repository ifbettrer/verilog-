`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/09 21:57:55
// Design Name: 
// Module Name: detector
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


module detector(clk, rst_n, din, dout, seg);
    input clk;
    input rst_n;
    input din; //检测的数据
    output reg dout;
    output reg [7:0]seg;
    
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    
    reg [1:0] state, c_state, n_state;
    reg [2:0]num = 0;
    always @(posedge clk or negedge rst_n)begin
        if(rst_n == 1'b0)
            c_state <= S0;
        else
            c_state <= n_state;
    end
    
    always @(c_state or din)begin
        case(c_state)
            S0:begin
               if(din == 1'b1)
                   n_state = S1;   //检测到1，状态改变
               else
                   n_state = S0;   //未检测到，状态回到S0
               end
            S1:begin
               if(din == 1'b1)
                   n_state = S2;
               else
                   n_state = S0;
               end
            S2:begin     //不重复检验
               if(din == 1'b1)
                   n_state = S1;
               else
                   n_state = S0;
               end
           /* S2:begin   //重复检验
               if(din == 1'b1)
                   n_state = S2;
               else
                   n_state = S0;
            end*/
            default: n_state = S0;
        endcase
    end
    
    always @(posedge clk or negedge rst_n)begin
        if(rst_n == 1'b0)
            dout <= 1'b0;
        else begin
            case(n_state)
                S2:
                dout <= 1'b1;
                default: dout <= 1'b0;
            endcase
            num = num + dout;
        end
    end
    
    always @(*)begin
        case(num)
            3'b000: seg <= 8'h3F;
            3'b001: seg <= 8'h06;
            3'b010: seg <= 8'h5B;
            3'b011: seg <= 8'h4F;
            3'b100: seg <= 8'h66;
            3'b101: seg <= 8'h6D;
            3'b110: seg <= 8'h7D;
            3'b111: seg <= 8'h07;
            default: seg <= 8'hff;
        endcase
    end
endmodule
