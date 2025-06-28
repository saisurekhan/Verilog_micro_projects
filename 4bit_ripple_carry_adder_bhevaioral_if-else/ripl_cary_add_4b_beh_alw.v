`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 04:07:44 PM
// Design Name: 
// Module Name: ripl_cary_add_4b_beh_alw
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


module ripl_cary_add_4b_beh_alw(
    input wire A3,A2,A1,A0,
    input wire B3,B2,B1,B0,
    input wire Cin,
    input wire en,
    output reg S3,S2,S1,S0,
    output reg Cout
    );
    
   reg C0,C1,C2;
   
   always@(*) begin 
        if( en == 1 ) begin
            S0 = A0 ^ B0 ^ Cin;
            C0 = (A0 & B0) | (Cin & (A0 ^ B0));
    
            S1 = A1 ^ B1 ^ C0;
            C1 = (A1 & B1) | (C0 & (A1 ^ B1));
    
            S2 = A2 ^ B2 ^ C1;
            C2 = (A2 & B2) | (C1 & (A2 ^ B2));
    
            S3 = A3 ^ B3 ^ C2;
            Cout = (A3 & B3) | (C2 & (A3 ^ B3));
        end
        else begin 
            S3 = 0;
            S2 = 0;
            S1 = 0;
            S0 = 0;
            Cout = 0;
        end 
   end 
   
endmodule
