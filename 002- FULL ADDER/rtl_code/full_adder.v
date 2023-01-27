`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:nidhin chandran 
// 
// Create Date: 27.01.2023 13:29:17
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input in1,
    input in2,
    input carryin,
    output sum,
    output carry
    );
    assign sum = in1^in2^carryin;
    assign carry = (in1 & in2) | (in1 & carryin) | (in2 & carryin);
endmodule
