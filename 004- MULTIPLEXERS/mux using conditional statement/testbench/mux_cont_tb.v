`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2023 17:52:10
// Design Name: 
// Module Name: mux_cont_tb
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


module mux_cont_tb(

    );
    
    reg [3:0] ta,tb,tc,td; 
    reg ts1,ts2;
    wire [3:0] ty ;
    
    mux_cont m1 (.a(ta),.b(tb),.c(tc),.d(td),.y(ty),.s1(ts1),.s2(ts2));
    initial
    $monitor("time= %g , A = %b ,B = %b ,C = %b ,D = %b ,Y = %b",$time,ta,tb,tc,td,ty);
    
    initial
    begin
    
    ta=4'ha;tb=4'hb;tc=4'hc;td=4'hd; 
    #10;ts1=0;ts2=0;
    #10;ts1=1;ts2=0;
    #10;ts1=0;ts2=1;
    #10;ts1=1;ts2=1;
    
    end
     
endmodule
