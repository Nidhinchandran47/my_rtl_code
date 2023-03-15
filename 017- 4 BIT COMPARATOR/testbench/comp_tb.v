`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 20:34:22
// Design Name: 
// Module Name: comp_tb
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


module comp_tb(
    );
    wire great,equal,less;
    reg [3:0] in1,in2;
    
    comp mod1 (.in_1(in1),.in_2(in2),.great(great),.equal(equal),.less(less));
    
    always
    begin
     
    in2 = 4'h0;#10;
    in2 = 4'h1;#10;
    in2 = 4'h2;#10;
    in2 = 4'h3;#10;
    in2 = 4'h4;#10;
    in2 = 4'h5;#10;
    in2 = 4'h6;#10;
    in2 = 4'h7;#10;
    in2 = 4'h8;#10;
    in2 = 4'h9;#10;
    in2 = 4'ha;#10;
    in2 = 4'hb;#10;
    in2 = 4'hc;#10;
    in2 = 4'hd;#10;
    in2 = 4'he;#10;
    in2 = 4'hf;#10;    
    end
    
    initial
    begin
    in1 = 4'h0;#160;
    in1 = 4'h1;#160;
    in1 = 4'h2;#160;
    in1 = 4'h3;#160;
    in1 = 4'h4;#160;
    in1 = 4'h5;#160;
    in1 = 4'h6;#160;
    in1 = 4'h7;#160;
    in1 = 4'h8;#160;
    in1 = 4'h9;#160;
    in1 = 4'ha;#160;
    in1 = 4'hb;#160;
    in1 = 4'hc;#160;
    in1 = 4'hd;#160;
    in1 = 4'he;#160;
    in1 = 4'hf;#160;
    
    end
    

endmodule
