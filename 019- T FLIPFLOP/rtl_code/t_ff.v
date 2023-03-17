`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2023 14:08:15
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,
    input clk,
    input rst,
    output reg q,
    output reg qbar
    );
    always @ (posedge clk)
    begin
        if(rst)
        q <= 0;
        
        else
        begin
            if(t)
            q <= ~q;
            
            else
            q <= q;
        end
    qbar = ~q;
    end
endmodule
