`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 04:55:44 PM
// Design Name: 
// Module Name: riplcary_add4b_for
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


module riplcary_add4b_for(
    input wire [3:0]A,
    input wire Cin,
    input wire [3:0]B,
    output reg Cout,
    output reg [3:0]S
    );
    
    reg [4:0]C;
    integer i;
    
    always@(*) begin 
        C[0] = Cin;
        for ( i = 0; i < 4; i = i + 1) begin 
            S[i] = ( A[i] ^ B[i] ^ C[i] );
            C[i + 1] = (A[i] & B[i]) | (C[i] & (A[i] ^ B[i]));
        end
        Cout = C[4];
    end 
  
endmodule
