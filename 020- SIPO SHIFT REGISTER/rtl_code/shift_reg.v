`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 11:26:44
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(
    input a,
    input clk,
    output [3:0] q,
    output [3:0] qbar
    );
    d_ff m1 (.clk(clk),.d(a),.q(q[0]),.qbar(qbar[0]));
    d_ff m2 (.clk(clk),.d(q[0]),.q(q[1]),.qbar(qbar[1]));
    d_ff m3 (.clk(clk),.d(q[1]),.q(q[2]),.qbar(qbar[2]));
    d_ff m4 (.clk(clk),.d(q[2]),.q(q[3]),.qbar(qbar[3]));
    
endmodule
