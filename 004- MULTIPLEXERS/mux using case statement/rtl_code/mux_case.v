`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2023 18:26:31
// Design Name: 
// Module Name: mux_case
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


module mux_case(
    input i1,
    input i2,
    input i3,
    input i0,
    input [1:0] s,
    output reg f
    );
    
    always @(*)
    case (s)
    2'b00 : f <= i0;
    2'b01 : f <= i1;
    2'b10 : f <= i2;
    2'b11 : f <= i3;
    endcase
    
endmodule
