`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 20:41:01
// Design Name: 
// Module Name: adder_4bit
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


module adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
    );
    
    wire s0,s1,s2;
    
    full_a_s m1(.in1(a[0]),.in2(b[0]),.carryin(cin),.sum(sum[0]),.carr(s0));
    full_a_s m2(.in1(a[1]),.in2(b[1]),.carryin(s0),.sum(sum[1]),.carr(s1));
    full_a_s m3(.in1(a[2]),.in2(b[2]),.carryin(s1),.sum(sum[2]),.carr(s2));
    full_a_s m4(.in1(a[3]),.in2(b[3]),.carryin(s2),.sum(sum[3]),.carr(cout));
    
endmodule
