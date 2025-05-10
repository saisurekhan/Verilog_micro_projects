`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 03:16:40 PM
// Design Name: 
// Module Name: twotoone_mux_behavioral
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


module twotoone_mux_behavioral(
    input wire A,
    input wire B,
    input wire S,
    output wire Z
    );
    
    wire X,Y,S_bar;
    assign S_bar = ~(S);
    assign X = (A & S_bar);
    assign Y = (B & S);
    assign Z = (X | Y);
    
endmodule
