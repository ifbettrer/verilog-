`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 11:02:41
// Design Name: 
// Module Name: detector2
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


module detector2(
    input clk,
    input rst_n,
    input [7:0]din,    //输入检测
    output reg [7:0]led,  //检测到所在区段结尾处
    output reg [7:0]seg   //七段显示码显示
    );
    
    reg [2:0]num;  //计数
    reg cout;    //标记
    reg [1:0]state, n_state;
    integer i = 7;
    reg q;
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    always @(posedge clk or negedge rst_n)begin
        num = 0;    //每次记得清零
        if(rst_n == 1'b0)begin
            state <= S0;
            i <= 7;
        end
        else begin
            state = S0;
            for(i = 7; i >= 0; i = i-1)begin
                q = din[i];
                case(state)
                  S0:if(q == 1)begin
                       n_state = S1; cout = 0;
                     end
                     else begin
                       n_state = S0; cout = 0;
                     end
                   S1:if(q == 1)begin
                        n_state = S2; cout = 1;
                        num = num + 1;
                      end
                      else begin
                        n_state = S0; cout = 0;
                      end
                    /*S2:if(q == 1)begin   //不重复检验
                         n_state = S1; cout = 0;
                       end
                       else begin
                         n_state = S0; cout = 0;
                       end*/
                    S2:if(q == 1)begin   //重复检验
                         n_state = S2; cout = 1;
                         num = num + 1;
                       end
                       else begin
                         n_state = S0; cout = 0;
                       end
                    default: n_state = S0;
                endcase
                state = n_state;
                led[i] = cout;
            end
        end
        case(num) //显示检测到的数量
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
