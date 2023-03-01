`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2023 21:09:23
// Design Name: 
// Module Name: adder_4bit_tb
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


module adder_4bit_tb(

    );
    
    reg [3:0] in1,in2;
    reg cin;
    wire [3:0] op;
    wire cout;
    
    adder_4bit uut( .a(in1),.b(in2),.cin(cin),.sum(op),.cout(cout) );
    initial
    $monitor("In1=%b,In2=%b,CarryIn=%b,Sum=%b,CarryOut=%b",in1,in2,cin,op,cout);
    
    initial
    begin
    in1 = 4'b0000; in2 = 4'b0000; cin =1; #10;
    in1 = 4'b0010; in2 = 4'b1000; cin =0; #10;
    in1 = 4'b0011; in2 = 4'b0110; cin =1; #10;
    in1 = 4'b1111; in2 = 4'b0100; cin =0; #10;
    in1 = 4'b1000; in2 = 4'b0110; cin =1; #10;
    in1 = 4'b0000; in2 = 4'b0000; cin =0; #10;
    in1 = 4'b0110; in2 = 4'b0000; cin =1; #10;
    in1 = 4'b0011; in2 = 4'b0100; cin =0; #10;
    in1 = 4'b0000; in2 = 4'b0110; cin =0; #10;
    in1 = 4'b1100; in2 = 4'b1110; cin =0; #10;
    in1 = 4'b1111; in2 = 4'b0000; cin =1; #10;
    in1 = 4'b0000; in2 = 4'b0111; cin =0; #10;
    $stop;
    end
endmodule
