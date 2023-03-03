`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 19:06:35
// Design Name: 
// Module Name: aik2b_tb
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


module aik2b_tb(

    );
    
    wire [3:0] bin;
    wire invalid;
    reg [3:0] aiken;
    
    aik2b uut(.bin(bin),.invalid(invaild),.aiken(aiken));
    
    initial
    $monitor(" the hexadecimal of the aiken value %h is --> %d",aiken,bin);
    
    initial
    begin
        aiken = 0;#10;
        aiken = 1;#10;
        aiken = 2;#10;
        aiken = 3;#10;
        aiken = 4;#10;
        aiken = 5;#10;
        aiken = 6;#10;
        aiken = 7;#10;
        aiken = 8;#10;
        aiken = 9;#10;
        aiken = 10;#10;
        aiken = 11;#10;
        aiken = 12;#10;
        aiken = 13;#10;
        aiken = 14;#10;
        aiken = 15;#10;
        $finish;
        
    end
endmodule
