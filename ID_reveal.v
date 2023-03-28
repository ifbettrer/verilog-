`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/09 11:12:55
// Design Name: 
// Module Name: ID_reveal
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


module ID_reveal(
    input  clk,
    output reg [7:0]led,
    output wire [2:0]del
    );
    
    reg [2:0]dout = 0;  //扫描频率
    reg [2:0]S = 0;  //用来控制显示的数码管
    
    always @(posedge clk)begin  //上升沿
        dout <= dout + 1'b1;
        if(dout == 7)begin  //127个上升后S+1
            S <= S + 1'b1;
            if(S == 2) begin
                S <= 3'b000;
            end
        end
        else begin
            S = S;
        end
        //$display("%d",S);
    end
    
    assign del = S;
    
    
    always @(*)begin
        if(del == 3'b000)begin
            led <= 8'b00000110;  //1
        end
        else if(del == 3'b001)begin
            led <= 8'b00111111;  //0
        end
        else begin
            led <= 8'b01101111;  //9
        end
    end
    
endmodule
