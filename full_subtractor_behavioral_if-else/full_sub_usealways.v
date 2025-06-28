`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 02:00:54 PM
// Design Name: 
// Module Name: full_sub_usealways
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


module full_sub_usealways_ifelse (
    input wire A,B,borrow_in,
    input wire en,
    output reg Y,borrow_out
    );
    
    always @(*) begin 
        if (en == 1) begin 
            Y = (A ^ B ^ borrow_in);
            borrow_out = ((~(A)) & B) | (borrow_in & (~(A ^ B)));
        end 
        else begin 
            Y = 0;
            borrow_out = 0;
        end 
    end  
endmodule
