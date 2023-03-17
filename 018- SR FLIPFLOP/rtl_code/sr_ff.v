`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 13:19:29
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input s,
    input r,
    input clk,
    output q,
    output qbar
    );
    wire w1,w2;
    nand m1 (w1,clk,s);
    nand m2 (w2,clk,r);
    nand m3 (q,w2,qbar);
    nand m4 (qbar,w1,q);
    
endmodule
