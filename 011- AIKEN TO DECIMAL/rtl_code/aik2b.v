`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2023 18:50:12
// Design Name: 
// Module Name: aik2b
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


module aik2b(
    input [3:0] aiken,
    output reg invalid,    
    output reg [3:0] bin
    );
    
    always@(*)
    case ( aiken )
    4'b0000 : begin
                     bin = 4'b0000;
                     invalid = 0;
                  end
    4'b0001 : begin
                     bin = 4'b0001;
                     invalid = 0;
                  end
    4'b0010 : begin
                     bin = 4'b0010;
                     invalid = 0;
                  end
    4'b0011 : begin
                     bin = 4'b0011;
                     invalid = 0;
                  end
    4'b0100 : begin
                     bin = 4'b0100;
                     invalid = 0;
                  end
    4'b1011 : begin
                     bin = 4'b0101;
                     invalid = 0;
                  end
    4'b1100 : begin
                     bin = 4'b0110;
                     invalid = 0;
                  end
    4'b1101 : begin
                     bin = 4'b0111;
                     invalid = 0;
                  end
    4'b1110 : begin
                     bin = 4'b1000;
                     invalid = 0;
                  end
    4'b1111 : begin
                     bin = 4'b1001;
                     invalid = 0;
                  end
    default:begin
              bin = 8'bx;
              invalid = 1 ;
              end
              
    endcase
endmodule
