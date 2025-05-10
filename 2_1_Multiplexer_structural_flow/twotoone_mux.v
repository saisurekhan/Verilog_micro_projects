`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
//
// Create Date: 04/21/2025 01:39:44 PM
// Design Name: 
// Module Name: twotoone_mux------structural
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


module twotoone_mux(
    input wire A,B,S,
    output wire Z
    );
    
   wire X,Y,S_bar;
   not(S_bar,S);
   and (X,A,S_bar);
   and (Y,B,S);
   or(Z,X,Y);
       
endmodule
