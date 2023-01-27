`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2023 13:32:44
// Design Name: 
// Module Name: fa_tb
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


module fa_tb(

    );
    reg t1,t2,tc,tmode;
    wire tsum,tcarry;
    
    full_a_s m2(.in1(t1),.in2(t2),.mode(tmode),.carryin(tc),.sum_diff(tsum),.carry_borr(tcarry));
    
    initial
    $monitor("time= %g ,MODE = %b ,A = %b ,B = %b ,CARRY = %b ,SUM = %b ,CARRY = %b",$time,tmode,t1,t2,tc,tsum,tcarry);
    
    initial
    begin
    tmode=0;
    t1= 0;t2= 0; tc= 0;#100;
    t1= 0;t2= 0; tc= 1;#100;
    t1= 0;t2= 1; tc= 0;#100;
    t1= 0;t2= 1; tc= 1;#100;
    t1= 1;t2= 0; tc= 0;#100;
    t1= 1;t2= 0; tc= 1;#100;
    t1= 1;t2= 1; tc= 0;#100;
    t1= 1;t2= 1; tc= 1;#100;
    tmode=1;
    t1= 0;t2= 0; tc= 0;#100;
    t1= 0;t2= 0; tc= 1;#100;
    t1= 0;t2= 1; tc= 0;#100;
    t1= 0;t2= 1; tc= 1;#100;
    t1= 1;t2= 0; tc= 0;#100;
    t1= 1;t2= 0; tc= 1;#100;
    t1= 1;t2= 1; tc= 0;#100;
    t1= 1;t2= 1; tc= 1;#100;
    
    end
endmodule
