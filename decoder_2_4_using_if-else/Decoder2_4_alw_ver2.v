`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 02:34:18 PM
// Design Name: 
// Module Name: Decoder2_4_alw_ver2
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


module Decoder2_4_alw_ver2(
    input A,B,enable,
    output reg Y0,Y1,Y2,Y3
    );
    
    reg A_bar,B_bar;     // here reg is a data type..we are not creating any register physically .... 
                         //// since we are trying to assign values for A_bar,B_bar,Y0,Y1,Y2,Y3 inside always we use reg data type
    
    always @(*) begin
        if ( enable == 1) begin
            A_bar = ~(A);
            B_bar = ~(B);
            
            Y0 = (enable & A_bar & B_bar);
            Y1 = (enable & A_bar & B);
            Y2 = (enable & A & B_bar);
            Y3 = (enable & A & B);
        end
        else begin 
            Y0 = 0;
            Y1 = 0;
            Y2 = 0;
            Y3 = 0;
        end 
    end 
endmodule
