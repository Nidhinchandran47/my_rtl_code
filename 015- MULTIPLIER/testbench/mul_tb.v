`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2023 10:06:31
// Design Name: 
// Module Name: mul_tb
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


module mul_tb(
    );
    reg [3:0] t1,t2;
    wire [7:0] tpro;
    
    mul uut (.in1(t1),.in2(t2),.pro(tpro));
    
    initial
    $monitor("%h * %h = %h",t1,t2,tpro);
    
    initial 
    begin
    
    t1=4'b0000; t2=4'b0101; #10;
    t1=4'b0001; t2=4'b1101; #10;
    t1=4'b0010; t2=4'b0101; #10;
    t1=4'b0011; t2=4'b0111; #10;
    t1=4'b1100; t2=4'b1101; #10;
    t1=4'b0110; t2=4'b0100; #10;
    t1=4'b1000; t2=4'b0011; #10;
    t1=4'b1100; t2=4'b1101; #10;
    t1=4'b1110; t2=4'b1011; #10;
    t1=4'b0000; t2=4'b0101; #10;
    t1= {$random}%15; t2={$random}%15; #10;
    t1= {$random}%15; t2={$random}%15; #10;
    t1= {$random}%15; t2={$random}%15; #10;
    t1= {$random}%15; t2={$random}%15; #10;
    $stop;
    end
    
endmodule
