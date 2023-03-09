`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 21:47:26
// Design Name: 
// Module Name: seven_tb
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


module seven_tb(

    );
    reg a,b,c,d;
    wire [6:0] out;
    
    seven uut (a,b,c,d,out);
    
    initial 
    begin
    a=0;b=0;c=0;d=0;#10;
    a=0;b=0;c=0;d=1;#10;
    a=0;b=0;c=1;d=0;#10;
    a=0;b=0;c=1;d=1;#10;
    a=0;b=1;c=0;d=0;#10;
    a=0;b=1;c=0;d=1;#10;
    a=0;b=1;c=1;d=0;#10;
    a=0;b=1;c=1;d=1;#10;
    a=1;b=0;c=0;d=0;#10;
    a=1;b=0;c=0;d=1;#10;
    a=1;b=0;c=1;d=0;#10;
    a=1;b=0;c=1;d=1;#10;
    a=1;b=1;c=0;d=0;#10;
    a=1;b=1;c=0;d=1;#10;
    a=1;b=1;c=1;d=0;#10;
    a=1;b=1;c=1;d=1;#10;
    $stop;
    end
endmodule
