`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2023 18:38:43
// Design Name: 
// Module Name: mux_case_tb
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


module mux_case_tb(

    );
    reg ti0,ti1,ti2,ti3;
    reg[1:0] ts;
    wire tf;
    
    mux_case mod1 (.i0(ti0),.i1(ti1),.i2(ti2),.i3(ti3),.s(ts),.f(tf));
    
    initial
    $monitor("time= %t, A=%b ,B=%b, C=%b, D=%b,    Y=%b",$time,ti0,ti1,ti2,ti3,tf);
    
    initial
    begin
    
    ti0=1;ti1=0;ti2=0;ti3=0;
    
    ts=2'b00;#10;
    ts=2'b01;#10;
    ts=2'b10;#10;
    ts=2'b11;#10;
    
    ti0=0;ti1=1;ti2=0;ti3=0;
    
    ts=2'b00;#10;
    ts=2'b01;#10;
    ts=2'b10;#10;
    ts=2'b11;#10;
    ti0=0;ti1=0;ti2=1;ti3=0;
    
    ts=2'b00;#10;
    ts=2'b01;#10;
    ts=2'b10;#10;
    ts=2'b11;#10;
    ti0=0;ti1=0;ti2=0;ti3=1;
    
    ts=2'b00;#10;
    ts=2'b01;#10;
    ts=2'b10;#10;
    ts=2'b11;#10;
    
    end
    initial
    #160 $finish;
endmodule
