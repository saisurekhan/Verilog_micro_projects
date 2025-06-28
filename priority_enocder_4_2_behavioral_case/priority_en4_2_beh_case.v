`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 02:24:31 PM
// Design Name: 
// Module Name: priority_en4_2_beh_case
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


module priority_en4_2_beh_case(
    input en,
    input I3,I2,I1,I0,
    output reg O0,O1
    );
    
    always @(*) begin
        case (en)
            1'b1 : begin
                    O1 = I2 | I3;
                    O0 = I3 | ( I1 & (~(I2)) );
                   end
                   
            1'b0 : begin
                    O1 = 0;
                    O0 = 0;
                   end 
        endcase
     end 
        
endmodule
