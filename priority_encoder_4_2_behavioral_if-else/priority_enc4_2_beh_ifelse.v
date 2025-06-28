`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 05:10:25 PM
// Design Name: 
// Module Name: priority_enc4_2_beh_ifelse
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


module priority_enc4_2_beh_ifelse(
    input en,
    input I3,I2,I1,I0,
    output reg O1,O0
    );
    
    always @(*) begin
        if(en == 1) begin 
            O1 = (I2 | I3);
            O0 = (I3 | I1 & (~(I2)));
        end 
        else begin 
            O1 = 0;
            O0 = 0;
        end 
    end
endmodule
