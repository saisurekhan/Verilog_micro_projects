`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 06:12:15 PM
// Design Name: 
// Module Name: half_sub_always
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


module half_sub_always(
    input wire A,B,
    input wire en,
    output reg Y,borrow
    );
    
    always @(*) begin
        if (en == 1) begin 
            Y = (A ^ B);
            borrow = ((~(A)) & B);
        end 
        else begin 
            Y = 0;
            borrow = 0;
        end 
    end  
    
endmodule
