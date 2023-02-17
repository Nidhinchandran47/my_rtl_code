`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 20:44:56
// Design Name: 
// Module Name: binary_to_gray
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


module binary_to_gray(
    input [3:0] in,
    output [3:0] out
    );
    assign out[3] = in[3];
    assign out[2] = in[3]^in[2];
    assign out[1] = in[2]^in[1];
    assign out[0] = in[1]^in[0];
endmodule
