`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 22:43:57
// Design Name: 
// Module Name: b2bcd_a
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


module b2bcd_a(
    input [3:0] a,
    output [4:0] b
    );
    wire c;
    assign c =a[3]&(a[2]|a[1]);
    //adder_4bit utt(.a(a),.cin(0),.sum(d),.cout(e),.b[0](0),.b[1](c),.b[2](c),.b[3](0));
    assign b = (c)?(a+6):(a);
endmodule
