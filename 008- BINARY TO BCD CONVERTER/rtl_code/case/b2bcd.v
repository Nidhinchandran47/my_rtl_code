`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 19:24:44
// Design Name: 
// Module Name: b2bcd
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


module b2bcd(
    input [3:0] inp,
    output reg [4:0] outp
    );
    always @ (*)
    case(inp)
    4'b0000 : outp = 5'b00000;
    4'b0001 : outp = 5'b00001;
    4'b0010 : outp = 5'b00010;
    4'b0011 : outp = 5'b00011;
    4'b0100 : outp = 5'b00100;
    4'b0101 : outp = 5'b00101;
    4'b0110 : outp = 5'b00110;
    4'b0111 : outp = 5'b00111;
    4'b1000 : outp = 5'b01000;
    4'b1001 : outp = 5'b01001;
    4'b1010 : outp = 5'b10000;
    4'b1011 : outp = 5'b10001;
    4'b1100 : outp = 5'b10010;
    4'b1101 : outp = 5'b10011;
    4'b1110 : outp = 5'b10100;
    4'b1111 : outp = 5'b10101;
    endcase
    
endmodule
