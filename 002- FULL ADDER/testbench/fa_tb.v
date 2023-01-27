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
    reg t1,t2,tc;
    wire tsum,tcarry;
    
    full_adder m1(.in1(t1),.in2(t2),.carryin(tc),.sum(tsum),.carry(tcarry));
    
    initial
    $monitor("time= %g , A = %b ,B = %b ,CARRY = %b ,SUM = %b ,CARRY = %b",$time,t1,t2,tc,tsum,tcarry);
    
    initial
    begin
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
