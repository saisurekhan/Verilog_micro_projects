`timescale 1ns / 1ps
`default_nettype none 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 03:54:24 PM
// Design Name: 
// Module Name: comparator_1bbeh_always
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


module comparator_1bbeh_always(
    input wire A,B,
    output reg A_great_B,A_equal_B,A_less_B
    );

    
    always @(*) begin
        ///Reset outputs first 
        A_great_B  = 0;
        A_equal_B  = 0;
        A_less_B   = 0;
        
        //conditional assignment 
        if( A > B) begin 
            A_great_B = (A & (~(B)));
            A_equal_B  = 0;
            A_less_B   = 0;
        end 
        else if( A == B) begin 
            A_equal_B = (~(A ^ B));
            A_great_B  = 0;
            A_less_B   = 0;    
        end 
        else if( A < B) begin 
            A_less_B = (B & (~(A)));
            A_great_B  = 0;
            A_equal_B  = 0;
        end 
    end 
endmodule
