`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 02:15:07 PM
// Design Name: 
// Module Name: Decoder2_4_behav_always
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


module Decoder2_4_behav_always(
    input enable,A,B,
    output reg Y0,Y1,Y2,Y3
    );
    
    always @(*) begin
        if (enable == 1) begin
            if ( A == 0 && B == 0) begin
                Y0 = 1;
                Y1 = 0;
                Y2 = 0;
                Y3 = 0;
            end
            else if (A == 0 && B == 1) begin
                Y0 = 0;
                Y1 = 1;
                Y2 = 0;
                Y3 = 0;
            end
            else if (A == 1 && B == 0) begin
                Y0 = 0;
                Y1 = 0;
                Y2 = 1;
                Y3 = 0;
            end
            else if (A == 1 && B == 1) begin
                Y0 = 0;
                Y1 = 0;
                Y2 = 0;
                Y3 = 1;
            end
       end
    end
        
endmodule
