`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 19:33:59
// Design Name: 
// Module Name: b2bcd_tb
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


module b2bcd_tb(
    );
    reg [3:0] t_in;
    wire [4:0] t_op;
    
    b2bcd mod1 (.inp(t_in),.outp(t_op));
    
    initial
    $monitor("The Binary Coded Decimal of %b is --> %b",t_in,t_op);
    
    initial
    begin
    
    t_in = 4'b0000; #100;
    t_in = 4'b0001; #100;
    t_in = 4'b0010; #100;
    t_in = 4'b0011; #100;
    t_in = 4'b0100; #100;
    t_in = 4'b0101; #100;
    t_in = 4'b0110; #100;
    t_in = 4'b0111; #100;
    t_in = 4'b1000; #100;
    t_in = 4'b1001; #100;
    t_in = 4'b1010; #100;
    t_in = 4'b1011; #100;
    t_in = 4'b1100; #100;
    t_in = 4'b1101; #100;
    t_in = 4'b1110; #100;
    t_in = 4'b1111; #100;
    $stop;
    end
endmodule
