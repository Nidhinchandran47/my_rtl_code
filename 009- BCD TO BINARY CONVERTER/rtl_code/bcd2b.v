`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2023 17:21:40
// Design Name: 
// Module Name: bcd2b
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


module bcd2b(
    input [3:0] bcd,
    output reg invalid,
    output  reg[7:0] bin
    );
    
    always @* begin
    case (bcd)
        4'd0:begin
              bin = 8'b0000000;
              invalid = 0 ;
              end
        4'd1:begin
              bin = 8'b0000001;
              invalid = 0 ;
              end
        4'd2:begin
              bin = 8'b0000010;
              invalid = 0 ;
              end
        4'd3:begin
              bin = 8'b0000011;
              invalid = 0 ;
              end
        4'd4:begin
              bin = 8'b0000100;
              invalid = 0 ;
              end
        4'd5:begin
              bin = 8'b0000101;
              invalid = 0 ;
              end
        4'd6:begin
              bin = 8'b0000110;
              invalid = 0 ;
              end
        4'd7:begin
              bin = 8'b0000111;
              invalid = 0 ;
              end
        4'd8: begin
              bin = 8'b0001000;
              invalid = 0 ;
              end
        4'd9:begin
              bin = 8'b0001001;
              invalid = 0 ;
              end
        default:begin
              bin = 8'bx;
              invalid = 1 ;
              end
    endcase
end
    
endmodule
