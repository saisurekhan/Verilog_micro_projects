`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 02:48:40 PM
// Design Name: 
// Module Name: Decoder2_4_with_case
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


module Decoder2_4_with_case(
    input A,B,enable,
    output reg Y0,Y1,Y2,Y3
    );
    
    reg A_bar,B_bar;
    
    always @(*) begin
        case (enable)
            1'b1:  begin
                A_bar = ~(A);
                B_bar = ~(B);
                Y0 = (enable & A_bar & B_bar);
                Y1 = (enable & A_bar & B);
                Y2 = (enable & A & B_bar);
                Y3 = (enable & A & B);
            end
            1'b0: begin
                Y0 = 0;
                Y1 = 0;
                Y2 = 0;
                Y3 = 0;
            end 
        endcase
      end          
endmodule
