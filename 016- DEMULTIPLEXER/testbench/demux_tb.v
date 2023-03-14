`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 22:26:18
// Design Name: 
// Module Name: demux_tb
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


module demux_tb(
    );
    reg [2:0]S;
reg A;
wire [7:0]Y;
demux m1 (.y(Y), .a(A), .s(S));
initial begin
A=1;
S=3'd0;
#30;
S=3'd1;
#30;
S=3'd2;
#30;
S=3'd3;
#30;
S=3'd4;
#30;
S=3'd5;
#30;
S=3'd6;
#30;
S=3'd7;
#30;

$finish;

end
endmodule
