`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 13:23:32
// Design Name: 
// Module Name: sr_ff_tb
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


module sr_ff_tb(
    );
    reg tclk,ts,tr;
    wire q,qbar;
    
    sr_ff uut (.clk(tclk),.s(tr),.r(ts),.q(q),.qbar(qbar));
    
    always
    begin
    tclk = 0; #5;
    tclk = 1; #5;
    end
    
    initial
    begin
    
    ts=1;
    tr=0;
    #24;
    
    ts=0;
    tr=0;
    #20;
    
    ts=0;
    tr=1;
    #16;
    
    ts=0;
    tr=0;
    #10;
    
    $stop;
    end
endmodule
