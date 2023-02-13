`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2023 17:43:14
// Design Name: 
// Module Name: mux_cont
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


module mux_cont(
    input [3:0] a,
    input [3:0] b,
    input [3:0] c,
    input [3:0] d,
    input s1,
    input s2,
    output [3:0] y
    );
    assign y = (s2)?(s1?d:c):(s1?b:a);
endmodule
