`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 11:14:39 PM
// Design Name: 
// Module Name: half_adder_behav
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


module half_adder_behav(
    input wire A,B,
    output wire S,C
    );
    
    assign S = (A ^ B ^ C);
    assign C = (A & B);
    
endmodule
