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


module full_a_s(
    input in1,
    input in2,
    input mode,
    input carryin,
    output sum_diff,
    output carry_borr
    );
    wire m1;
    assign m1 = mode ^ in1;
    assign sum_diff = in1^in2^carryin;
    assign carry_borr = (m1 & in2) | (m1 & carryin) | (in2 & carryin);
endmodule
