`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 14:15:51
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb();
    reg t,clk,rst;
    wire q,qbar;
    
    t_ff ckt (.t(t),.clk(clk),.rst(rst),.q(q),.qbar(qbar));
    
     always
    begin
    clk = 0; #5;
    clk = 1; #5;
    end
    
    initial
    begin
    
    t=0;
    rst = 1; #16;
    
    rst = 0;
    t= 0; #10;
    
    t= 1; #55;
    
    t = 0; #15;
    
    $stop;
    end
    
endmodule
