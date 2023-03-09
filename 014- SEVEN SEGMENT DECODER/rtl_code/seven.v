`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2023 20:48:53
// Design Name: 
// Module Name: seven
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


module seven(
    input a,
    input b,
    input c,
    input d,
    output [6:0] out
    );
    assign out [0] = (~b&~d) | (~a&c) | (b&c) | (a&~d) | (~a&b&d) | (a&~b&~c) | (a&~b&~c&~d);
    assign out [1] = ~(a|b) | ~(a|c|d) | (~a&c&d) | (a&~c&d) | (a&c&~d) | (a&~b&~c&~d);
    assign out [2] = ~(a|c) | (~a&d) | (~c&d) | (~a&b) | (a&~b&c) | (a&~b&~c&~d);
    assign out [3] = ~(a|b|d) | (~a&~b&c) | (b&~c&d) | (b&~c&d) | (a&~b&d) | (a&b&~c) | (a&~b&~c&~d);
    assign out [4] = (c&~d) | (a&c) | (a&b) | (~a&~b&~d) | (a&~b&~c&~d);
    assign out [5] = (b&~d) | (a&c) |(~a&~c&~d) |(~a&b&~c) |(a&~b&d) | (a&~b&~c&~d);
    assign out [6] = (~b&c) | (~d&c) |(a&~b) |(a&d) |(~a&b&~c);
    
endmodule
