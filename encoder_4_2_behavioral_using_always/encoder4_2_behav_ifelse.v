`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 03:50:48 PM
// Design Name: 
// Module Name: encoder4_2_behav_ifelse
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


module encoder4_2_behav_ifelse(
    input en,
    input Y3,Y2,Y1,Y0,
    output reg A1,A0
    );
    
    always @(*) begin
        if ( en == 1) begin 
            A1 = (Y3 | Y2);
            A0 = (Y3 | Y1);
        end 
        else begin
            A1 = 0;
            A0 = 0;
        end 
    end 

endmodule
