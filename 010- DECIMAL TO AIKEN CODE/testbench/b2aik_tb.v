`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 18:29:56
// Design Name: 
// Module Name: b2aik_tb
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


module b2aik_tb(
    );
    reg [3:0] bin;
    wire invalid;
    wire [3:0] aiken;
    
    b2aik dut(.bin(bin),.invalid(invalid),.aiken(aiken));
    
    initial
    $monitor("the aiken code of %b(%d) is --> %b",bin,bin,aiken);
    
    initial
    begin
    bin = 0;#10;
    bin = 1;#10;
    bin = 2;#10;
    bin = 3;#10;
    bin = 4;#10;
    bin = 5;#10;
    bin = 6;#10;
    bin = 7;#10;
    bin = 8;#10;
    bin = 9;#10;
    bin = 10;#10;
    bin = 11;#10;
    bin = 12;#10;
    bin = 13;#10;
    bin = 14;#10;
    bin = 15;#10;
    $finish;
    end
    
endmodule
