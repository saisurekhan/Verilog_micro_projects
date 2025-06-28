`timescale 1ns / 1ps
`default_nettype none;
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 09:06:30 PM
// Design Name: 
// Module Name: riplcary_add_4b_beh
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


module riplcary_add_4b_beh(
    input wire A3,A2,A1,A0,
    input wire B3,B2,B1,B0,
    input wire Cin,
    output wire Cout,
    output wire S3,S2,S1,S0
    );
    
    wire C0,C1,C2;
    
    assign S0 = ( A0 ^ B0 ^ Cin );
    assign C0 = ( (A0 & B0) | (Cin & (A0^B0)) );
    
    assign S1 = ( A1 ^ B1 ^ C0 );
    assign C1 = ( (A1 & B1) | (C0 & (A1^B1)) );
    
    assign S2 = ( A2 ^ B2 ^ C1 );
    assign C2 = ( (A2 & B2) | (C1 & (A2^B2)) );
    
    assign S3 = ( A3 ^ B3 ^ C2 );
    assign Cout = ( (A3 & B3) | (C2 & (A3^B3)) );
       
endmodule
