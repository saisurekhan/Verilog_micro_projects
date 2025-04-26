`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 02:56:11 PM
// Design Name: 
// Module Name: twotoone_structural_tb
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


module twotoone_structural_tb(

    );
    
    reg A,B,S;
    wire Z;
    
    twotoone_mux uut(
    .S(S),
    .A(A),
    .B(B),
    .Z(Z)
    );
    
    initial begin
    
    #10;
    S=0; A=0;
    #50;
    S=1; B=1;
    #50;
     S=0; A=1;
    #50;
    S=1; B=0;
    #50;

    end 
endmodule
