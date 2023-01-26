`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 23:09:53
// Design Name: 
// Module Name: jk_tb
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


module jk_tb(

    );
    reg tclk,tj,tk;
    wire tq,tqbar;
    jk_flipflop ff1 (.q(tq),.qbar(tqbar),.clk(tclk),.j(tj),.k(tk));
    
    initial
    $monitor("time = %g, j = %b,k = %b,q = %b,qbar = %b",$time,tj,tk,tq,tqbar);
    initial 
    begin
        tclk=0;
        forever #10 tclk = ~tclk;  
    end 
    initial
    begin 
        tj= 1; tk= 0;
        #100; tj= 0; tk= 1; 
        #100; tj= 0; tk= 0; 
        #100; tj= 1; tk=1;
        #100; tj= 0; tk= 0; 
        #100; tj= 1; tk= 0; 
        #100; tj= 0; tk= 0; 
        #100; tj= 0; tk= 1; 
        #100; tj= 1; tk= 1; 
        #100; tj= 1; tk= 0; 
        #100; tj= 0; tk= 0; 
        
    end 
    
endmodule
