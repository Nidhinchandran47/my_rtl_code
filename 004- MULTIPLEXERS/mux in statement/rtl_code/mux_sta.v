`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2023 19:54:49
// Design Name: 
// Module Name: mux_sta
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


module mux_sta(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output out
    );
    assign out = (sel[0] && sel[1] && d)||(~sel[0] && sel[1] && c)||(sel[0] && ~sel[1] && b)||(~sel[0] && ~sel[1] && a);
endmodule
