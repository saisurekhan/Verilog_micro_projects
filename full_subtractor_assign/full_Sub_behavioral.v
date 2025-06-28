`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 07:41:49 PM
// Design Name: 
// Module Name: full_Sub_behavioral
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


module full_Sub_behavioral(
    input wire A,B,borrow_in,
    output wire Y,borrow_out
    );
    
    assign Y = (A ^ B ^ borrow_in);
    assign borrow_out = ((~(A)) & B) | (borrow_in & (~(A ^B))); 
    
endmodule
