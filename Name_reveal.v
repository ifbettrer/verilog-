`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/09 12:32:23
// Design Name: 
// Module Name: Name_reveal
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


module Name_reveal(
    input wire clk,
    output reg [3:0]keyc,
    output  reg [15:0]keyr
    );
    
    reg [1:0]S = 'd0;
    reg [3:0]cdout = 'd0;
    reg [9:0]dout = 'd0;
    
    always @(posedge clk)begin
        dout <= dout + 1'b1;
        if(dout == 'd1023)begin
            S <= S + 1'b1;
            if(S == 2)begin
                S <= 2'b00;
            end
        end
    end
    
    always @(posedge clk)begin
        if(cdout < 15)begin //¿ØÖÆÉ¨ÃèÐÐ
            cdout <= cdout + 1'b1;
        end
        else begin
            cdout <= 4'b0000; 
        end
        keyc <= cdout;
    end
    
    always @(cdout,S)begin
        if(S == 2'b00)begin
            case(keyc)
                4'b0000: keyr <= 16'b1111111111111101;
                4'b0001: keyr <= 16'b1011110000011101;
                4'b0010: keyr <= 16'b0111110111011101;
                4'b0011: keyr <= 16'b1011110111011101;
                4'b0100: keyr <= 16'b1100000111000000;
                4'b0101: keyr <= 16'b1111111101111101;
                4'b0110: keyr <= 16'b1111111101111111;
                4'b0111: keyr <= 16'b0000000000000000;
                4'b1000: keyr <= 16'b1011111101111111;
                4'b1001: keyr <= 16'b1101110001011111;
                4'b1010: keyr <= 16'b1111001101101111;
                4'b1011: keyr <= 16'b1110111101110111;
                4'b1100: keyr <= 16'b1101111101111001;
                4'b1101: keyr <= 16'b1001111100111111;
                4'b1110: keyr <= 16'b1101111101111111;
                4'b1111: keyr <= 16'b1111111111111111;
                default: keyr <= 16'b1111111111111111;
            endcase
        end
        else if(S == 2'b01)begin
            case(keyc)
                4'b0000: keyr <= 16'b1011111111111011;
                4'b0001: keyr <= 16'b1011111111111011;
                4'b0010: keyr <= 16'b1011111111111011;
                4'b0011: keyr <= 16'b1011111111111011;
                4'b0100: keyr <= 16'b1000000000111011;
                4'b0101: keyr <= 16'b1011111111100000;
                4'b0110: keyr <= 16'b1011111111111011;
                4'b0111: keyr <= 16'b1000000000001011;
                4'b1000: keyr <= 16'b1011111011111011;
                4'b1001: keyr <= 16'b1011111011100000;
                4'b1010: keyr <= 16'b1011111011111011;
                4'b1011: keyr <= 16'b1011111001111011;
                4'b1100: keyr <= 16'b1011111011111011;
                4'b1101: keyr <= 16'b1001111111111001;
                4'b1110: keyr <= 16'b1011111111111011;
                4'b1111: keyr <= 16'b1111111111111111;
                default: keyr <= 16'b1111111111111111;
            endcase
        end
        else begin
            case(keyc)
                4'b0000: keyr <= 16'b1111110111101111;
                4'b0001: keyr <= 16'b1100000000001000;
                4'b0010: keyr <= 16'b1101110111010000;
                4'b0011: keyr <= 16'b0101010101010111;
                4'b0100: keyr <= 16'b0101110111010111;
                4'b0101: keyr <= 16'b1000000000010011;
                4'b0110: keyr <= 16'b0101110111110111;
                4'b0111: keyr <= 16'b1011111101110111;
                4'b1000: keyr <= 16'b1100000100110111;
                4'b1001: keyr <= 16'b1111111101000110;
                4'b1010: keyr <= 16'b1000000101110001;
                4'b1011: keyr <= 16'b1111111101010111;
                4'b1100: keyr <= 16'b1000000100110111;
                4'b1101: keyr <= 16'b1011111101110011;
                4'b1110: keyr <= 16'b1000111111110111;
                4'b1111: keyr <= 16'b1111111111111111;
                default: keyr <= 16'b1111111111111111;
            endcase
        end
    end
endmodule
