`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 03:18:27 PM
// Design Name: 
// Module Name: comparator_1b_struct
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


module comparator_1b_struct(
    input wire A,B,
    output wire A_great_B,A_equals_B,A_less_B
    );
    
    wire A_bar,B_bar,xor_logic;
    
    not(A_bar,A);
    not(B_bar,B);
    and(A_great_B,A,B_bar);
    xor(xor_logic,A,B);
    not(A_equals_B,xor_logic);
    and(A_less_B,A_bar,B);
    
    
endmodule
