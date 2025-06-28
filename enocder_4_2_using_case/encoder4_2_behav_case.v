`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 04:04:20 PM
// Design Name: 
// Module Name: encoder4_2_behav_case
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


module encoder4_2_behav_case(
    input en,
    input Y3,Y2,Y1,Y0,
    output reg A1,A0
    );
    
    
    always @(*) begin
        case(en)
        1'b1 : begin
                 A1 = (Y3 | Y2);
                 A0 = (Y3 | Y1);
               end 
        1'b0 : begin
                A1 = 0;
                A0 = 0;
               end 
        endcase
    end 
endmodule
