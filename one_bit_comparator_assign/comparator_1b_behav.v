`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 03:29:14 PM
// Design Name: 
// Module Name: comparator_1b_behav
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


module comparator_1b_behav(
    input A,B,
    output A_great_B,A_equals_B,A_less_B
    );
    
    
    assign A_great_B = (A & (~(B)));
    assign A_equals_B = ((~(A ^ B)));
    assign A_less_B = (~(A) & B);
    
endmodule
