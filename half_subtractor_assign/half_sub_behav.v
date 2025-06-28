`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 06:05:49 PM
// Design Name: 
// Module Name: half_sub_behav
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


module half_sub_behav(
    input wire A,B,
    output wire Y,borrow
    );
    
    assign Y = (A ^ B);
    assign borrow = ((~(A)) & B);
    
endmodule
