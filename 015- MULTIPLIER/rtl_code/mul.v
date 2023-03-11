`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 09:42:35
// Design Name: 
// Module Name: mul
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


module mul(
    input [3:0] in1,
    input [3:0] in2,
    output [7:0] pro
    );
    wire [3:0] a1,a2,a3,a4,s1,s2;
    wire z1,z2;
    
    assign a1[0] = in1[0] & in2[0];
    assign a1[1] = in1[0] & in2[1];
    assign a1[2] = in1[0] & in2[2];
    assign a1[3] = in1[0] & in2[3];
    
    assign a2[0] = in1[1] & in2[0];
    assign a2[1] = in1[1] & in2[1];
    assign a2[2] = in1[1] & in2[2];
    assign a2[3] = in1[1] & in2[3];
    
    assign a3[0] = in1[2] & in2[0];
    assign a3[1] = in1[2] & in2[1];
    assign a3[2] = in1[2] & in2[2];
    assign a3[3] = in1[2] & in2[3];
    
    assign a4[0] = in1[3] & in2[0];
    assign a4[1] = in1[3] & in2[1];
    assign a4[2] = in1[3] & in2[2];
    assign a4[3] = in1[3] & in2[3];
    
    assign pro[0] = a1[0];
    
    rca m1 (.i1(a2),.i2({1'b0,a1[3:1]}),.sum(s1),.cout(z1));
    
    assign pro[1] = s1[0];
    
    rca m2 (.i1(a3),.i2({z1,s1[3:1]}),.sum(s2),.cout(z2));
    
    assign pro[2] = s2[0];
    
    rca m3 (.i1(a4),.i2({z2,s2[3:1]}),.sum(pro[6:3]),.cout(pro[7]));
    
endmodule
