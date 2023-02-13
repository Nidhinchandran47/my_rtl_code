`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2023 20:00:09
// Design Name: 
// Module Name: mux_sta_tb
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


module mux_sta_tb(

    );
    
    reg ta,tb,tc,td;
    reg [1:0] tsel;
    wire tout;
    
    mux_sta modu2 (.a(ta),.b(tb),.c(tc),.d(td),.sel(tsel),.out(tout));
    
    initial
    $monitor("time= %g , A = %b ,B = %b ,C = %b ,D = %b ,OUT = %b",$time,ta,tb,tc,td,tout);
    
    initial
    begin
    
    ta=0;tb=0;tc=0;td=1; 
    tsel=2'b00;#10;
    tsel=2'b01;#10;
    tsel=2'b10;#10;
    tsel=2'b11;#10;
    ta=0;tb=0;tc=1;td=0; 
    tsel=2'b00;#10;
    tsel=2'b01;#10;
    tsel=2'b10;#10;
    tsel=2'b11;#10;
    ta=0;tb=1;tc=0;td=0; 
    tsel=2'b00;#10;
    tsel=2'b01;#10;
    tsel=2'b10;#10;
    tsel=2'b11;#10;
    ta=1;tb=0;tc=0;td=0; 
    tsel=2'b00;#10;
    tsel=2'b01;#10;
    tsel=2'b10;#10;
    tsel=2'b11;#10;
    
    end
    initial
    #160 $finish;
    
endmodule
