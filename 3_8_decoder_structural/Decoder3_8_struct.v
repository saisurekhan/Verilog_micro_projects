`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 04:03:45 PM
// Design Name: 
// Module Name: Decoder3_8_struct
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


module Decoder3_8_struct(
    input A,B,C,en,
    output Y0,Y1,Y2,Y3,
    output Y4,Y5,Y6,Y7
    );
    
    wire A_bar,B_bar,C_bar;
    
    not(A_bar,A);
    not(B_bar,B);
    not(C_bar,C);
    and(Y0,en,A_bar,B_bar,C_bar);
    and(Y1,en,A_bar,B_bar,C);
    and(Y2,en,A_bar,B,C_bar);
    and(Y3,en,A_bar,B,C);
    and(Y4,en,A,B_bar,C_bar);
    and(Y5,en,A,B_bar,C);
    and(Y6,en,A,B,C_bar);
    and(Y7,en,A,B,C);
    
endmodule
