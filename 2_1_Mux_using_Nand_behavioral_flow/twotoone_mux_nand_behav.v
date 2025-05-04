`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 03:56:25 PM
// Design Name: 
// Module Name: twotoone_mux_nand_behav
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


module twotoone_mux_nand_behav(
    input S,
    input A,
    input B,
    output Z
    );
    
    wire S_bar,X,Y,P,Q,U,V;
    
    assign S_bar = ~(S & S);
    assign X = ~(A & S_bar);
    assign Y = ~(B & S);
    assign P = ~(X & X);
    assign Q = ~(Y & Y);
    assign U = ~(P & P);
    assign V = ~(Q & Q);
    assign Z = ~(U & V);
   
endmodule
