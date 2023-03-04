`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2023 14:12:57
// Design Name: 
// Module Name: b2xs3_tb
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


module b2xs3_tb(
    );
    reg [3:0] bin;
    wire invaild;
    wire [3:0] xs3;
    
    b2xs3 uut (.bin(bin),.xs3(xs3),.invalid(invalid)); 
    
    initial
    $monitor("excess 3 code of %h is --> %h",bin ,xs3);
    
    initial
    begin
        bin = 0; #10;
        bin = 1; #10;
        bin = 2; #10;
        bin = 3; #10;
        bin = 4; #10;
        bin = 5; #10;
        bin = 6; #10;
        bin = 7; #10;
        bin = 8; #10;
        bin = 9; #10;
        bin = 10; #10;
        bin = 11; #10;
        bin = 12; #10;
        bin = 13; #10;
        bin = 14; #10;
        bin = 15; #10;
        $finish;
    end 
endmodule
