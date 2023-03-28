`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2023 10:16:34
// Design Name: 
// Module Name: syn_single_p_ram
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


module syn_single_p_ram(
    input clk,
    input read,
    input write,
    input cs,
    input [3:0] addr,
    input [7:0] data_in,
    output reg [7:0] value
    );
    reg [7:0] mem_loc [15:0];
    always @ (posedge clk)
    if(cs)
    begin
        if(write)
            mem_loc[addr] <= data_in;
        else if (read)
            value <= mem_loc[addr];
        else
            value <= 8'h00;
    end
    else
        value <= 8'h00;
endmodule
