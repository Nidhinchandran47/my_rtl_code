`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: nidhin chandran
// 
// Create Date: 13.02.2023 19:21:11
// Design Name: 
// Module Name: mux_if_else
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// contact me 0091 8301960200
//            nidhinchandran470@gmail.com
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_if_else(
    input a,
    input b,
    input c,
    input d,
    input [1:0] sel,
    output reg out
    );
    always@(*)
    begin
        if      (sel == 2'b00)    out = a;
        else if (sel == 2'b01)    out = b;
        else if (sel == 2'b10)    out = c;
        else if (sel == 2'b11)    out = d;
         
    end
endmodule
