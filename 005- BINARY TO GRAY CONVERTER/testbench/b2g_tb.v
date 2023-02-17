`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 20:53:04
// Design Name: 
// Module Name: b2g_tb
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


module b2g_tb(
    );
    reg [3:0]tin;
    wire [3:0]tout;
    binary_to_gray mod1(.out(tout),.in(tin));
    initial
    $monitor("the grey code of %b is --> %b",tin,tout);
    
    initial
    begin
    
    tin = 4'h0;  #10;
    tin = 4'h1;  #10;
    tin = 4'h2;  #10;
    tin = 4'h3;  #10;
    tin = 4'h4;  #10;
    tin = 4'h5;  #10;
    tin = 4'h6;  #10;
    tin = 4'h7;  #10;
    tin = 4'h8;  #10;
    tin = 4'h9;  #10;
    tin = 4'ha;  #10;
    tin = 4'hb;  #10;
    tin = 4'hc;  #10;
    tin = 4'hd;  #10;
    tin = 4'he;  #10;
    tin = 4'hf;  #10;
    end
    initial
    #160 $finish;
endmodule
