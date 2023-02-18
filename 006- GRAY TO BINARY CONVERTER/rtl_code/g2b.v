`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2023 11:40:01
// Design Name: 
// Module Name: g2b
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


module g2b(
    input [3:0] in,
    output [3:0] out
    );
    wire a,b,c;
    assign out[3] = in[3];
    xor m1(a,in[3],in[2]);
    xor m2(b,a,in[1]);
    xor m3(c,b,in[0]);
    assign out[2] = a;
    assign out[1] = b;
    assign out[0] = c;
    
endmodule
