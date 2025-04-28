`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 03:47:01 PM
// Design Name: 
// Module Name: twotoone_mux_nand_structural
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


module twotoone_mux_nand_structural(
    input A,
    input B,
    input S,
    output Z
    );
    
    wire X,Y,S_bar,P,Q,U,V;
    
    nand(S_bar,S,S);
    nand(X,A,S_bar);
    nand(Y,B,S);
    nand(P,X,X);
    nand(Q,Y,Y);
    nand(U,P,P);
    nand(V,Q,Q);
    nand(Z,U,V); 
endmodule
