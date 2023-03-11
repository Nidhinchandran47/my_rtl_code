`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 09:34:04
// Design Name: 
// Module Name: rca
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


module rca(
    input [3:0] i1,
    input [3:0] i2,
    output cout,
    output [3:0] sum
    );
    wire c1,c2,c3;
    fa m1 (.a(i1[0]),.b(i2[0]),.c(1'b0),.sum(sum[0]),.ca(c1));
    fa m2 (.a(i1[1]),.b(i2[1]),.c(c1),.sum(sum[1]),.ca(c2));
    fa m3 (.a(i1[2]),.b(i2[2]),.c(c2),.sum(sum[2]),.ca(c3));
    fa m4 (.a(i1[3]),.b(i2[3]),.c(c3),.sum(sum[3]),.ca(cout));
    
endmodule
