`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2023 17:34:35
// Design Name: 
// Module Name: x2b
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


module x2b(
    input [3:0] inp,
    output reg invalid,
    output reg [3:0] op
    );
    always@(*)
    case(inp)
       
        4'b0011 : begin
                     op = 4'b0000;
                     invalid = 0;
                  end
        4'b0100 : begin
                     op = 4'b0001;
                     invalid = 0;
                  end
        4'b0101 : begin
                     op = 4'b0010;
                     invalid = 0;
                  end
        4'b0110 : begin
                     op = 4'b0011;
                     invalid = 0;
                  end
        4'b0111 : begin
                     op = 4'b0100;
                     invalid = 0;
                  end
        4'b1000 : begin
                     op = 4'b0101;
                     invalid = 0;
                  end
        4'b1001 : begin
                     op = 4'b0110;
                     invalid = 0;
                  end
        4'b1010 : begin
                     op = 4'b0111;
                     invalid = 0;
                  end
        4'b1011 : begin
                     op = 4'b1000;
                     invalid = 0;
                  end
        4'b1100 : begin
                     op = 4'b1001;
                     invalid = 0;
                  end
        default:begin
              op = 8'bx;
              invalid = 1 ;
              end
        endcase
endmodule
