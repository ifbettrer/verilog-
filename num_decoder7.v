`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/02 22:04:47
// Design Name: 
// Module Name: num_decoder7
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


module num_decoder7(
    input LE,BL,LT,
    input [3:0]D,
    output [6:0]L
    );
    
    reg [6:0]L;
    wire [2:0] E;
    assign E = {LE,BL,LT};
    always @(*)
    begin
        if(LE==0&&BL==1&&LT==1)
        begin
            case(D)
            //0-9��ʾ
              4'b0000:L=7'b111_1110;
              4'b0001:L=7'b011_0000;
              4'b0010:L=7'b110_1101;
              4'b0011:L=7'b111_1001;
              4'b0100:L=7'b011_0011;
              4'b0101:L=7'b101_1011;
              4'b0110:L=7'b001_1111;
              4'b0111:L=7'b111_0000;
              4'b1000:L=7'b111_1111;
              4'b1001:L=7'b111_1011;
              //��Ч״̬
              4'b1010:L=7'b000_0000;
              4'b1011:L=7'b000_0000;
              4'b1100:L=7'b000_0000;
              4'b1101:L=7'b000_0000;
              4'b1110:L=7'b000_0000;
              4'b1111:L=7'b000_0000;
            endcase
        end
        else
        begin
            casex(E)
                3'bxx0:L=7'b111_1111;
                3'bx01:L=7'b000_0000;
                3'b111:L<=L;
            endcase
        end
    end
endmodule
