`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2023 14:01:09
// Design Name: 
// Module Name: b2xs3
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


module b2xs3(
    input [3:0] bin,
    output [3:0] xs3,
    output invalid
    );
    wire inv;
    assign xs3[0] = inv & (~(bin[0]));
    assign xs3[1] = inv & (~(bin[0]^bin[1]));
    assign xs3[2] = inv & ((~bin[2] & bin[0])|(~bin[2] & bin[1])|(~bin[0] & ~bin[1] & bin[2]));
    assign xs3[3] = inv & (bin[3]|(bin[2]&bin[0])|(bin[2]&bin[1]));
    assign invalid = bin[3] & ( bin[2] | bin[1] );
    assign inv = ~invalid;
endmodule
