`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 18:10:27
// Design Name: 
// Module Name: b2aik
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


module b2aik(
    input [3:0] bin,
    output reg invalid,
    output reg [3:0] aiken
    );
    always@(*)
    case(bin)
        4'b0000 : begin
                     aiken = 4'b0000;
                     invalid = 0;
                  end
        4'b0001 : begin
                     aiken = 4'b0001;
                     invalid = 0;
                  end
        4'b0010 : begin
                     aiken = 4'b0010;
                     invalid = 0;
                  end
        4'b0011 : begin
                     aiken = 4'b0011;
                     invalid = 0;
                  end
        4'b0100 : begin
                     aiken = 4'b0100;
                     invalid = 0;
                  end
        4'b0101 : begin
                     aiken = 4'b1011;
                     invalid = 0;
                  end
        4'b0110 : begin
                     aiken = 4'b1100;
                     invalid = 0;
                  end
        4'b0111 : begin
                     aiken = 4'b1101;
                     invalid = 0;
                  end
        4'b1000 : begin
                     aiken = 4'b1110;
                     invalid = 0;
                  end
        4'b1001 : begin
                     aiken = 4'b1111;
                     invalid = 0;
                  end
        default:begin
              aiken = 8'bx;
              invalid = 1 ;
              end
    endcase
endmodule
