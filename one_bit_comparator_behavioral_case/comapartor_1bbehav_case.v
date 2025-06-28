`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 04:17:10 PM
// Design Name: 
// Module Name: comapartor_1bbehav_case
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


module comapartor_1bbehav_case(
    input wire A,B,
    output reg A_great_B,A_equal_B,A_less_B
    );
    
    always @(*) begin 
        case ({A,B}) 
            2'b00 : begin
                    A_equal_B = (~(A ^ B));
                    A_great_B = 0;
                    A_less_B = 0;
                   end
            2'b01 : begin
                    A_less_B = (B & (~(A)));
                    A_great_B = 0;
                    A_equal_B = 0;
                   end
            2'b10 : begin
                    A_great_B = (A & (~(B)));
                    A_less_B = 0;
                    A_equal_B = 0;
                   end
            2'b11 : begin
                    A_equal_B = (~(A ^ B));
                    A_great_B = 0;
                    A_less_B = 0;
                   end
        endcase    
    end            
endmodule
