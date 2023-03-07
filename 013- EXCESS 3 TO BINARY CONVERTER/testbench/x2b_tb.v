`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 17:50:34
// Design Name: 
// Module Name: x2b_tb
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


module x2b_tb(

    );
    reg [3:0]tin;
    wire invalid;
    wire [3:0]tout;
    
    x2b mod1(.inp(tin),.op(tout),.invalid(invalid));
    
    initial
    $monitor("The binary of xs3 code %b is --> %b",tin,tout);
    
    initial
    begin
    
    tin=4'h0; #10;
    tin=4'h1; #10;
    tin=4'h2; #10;
    tin=4'h3; #10;
    tin=4'h4; #10;
    tin=4'h5; #10;
    tin=4'h6; #10;
    tin=4'h7; #10;
    tin=4'h8; #10;
    tin=4'h9; #10;
    tin=4'ha; #10;
    tin=4'hb; #10;
    tin=4'hc; #10;
    tin=4'hd; #10;
    tin=4'he; #10;
    tin=4'hf; #10;
    
    end
    
    initial
    #160 $finish;
endmodule
