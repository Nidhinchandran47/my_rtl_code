`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2023 17:28:29
// Design Name: 
// Module Name: bcd2b_tb
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


module bcd2b_tb(
    );
    
    reg [3:0] t_bcd ;
    wire [7:0] t_bin;
    wire t_invaild;
    bcd2b uut ( .bcd(t_bcd),.bin(t_bin),.invalid(t_invaild) );
    
    initial
    $monitor(" %b is the binary of %b",t_bin,t_bcd);
    
    initial
    begin
    t_bcd = 4'd0;#10;
    t_bcd = 4'd1;#10;
    t_bcd = 4'd2;#10;
    t_bcd = 4'd3;#10;
    t_bcd = 4'd4;#10;
    t_bcd = 4'd5;#10;
    t_bcd = 4'd6;#10;
    t_bcd = 4'd7;#10;
    t_bcd = 4'd8;#10;
    t_bcd = 4'd9;#10;
    t_bcd = 4'd10;#10;
    t_bcd = 4'd11;#10;
    t_bcd = 4'd12;#10;
    t_bcd = 4'd13;#10;
    t_bcd = 4'd14;#10;
    t_bcd = 4'd15;#10;
    $stop;
    end
    
endmodule
