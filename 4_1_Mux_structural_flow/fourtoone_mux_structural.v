`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 04:41:57 PM
// Design Name: 
// Module Name: fourtoone_mux_structural
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


module fourtoone_mux_structural(
    input A,
    input B,
    input C,
    input D,
    input S0,
    input S1,
    output Z
    );
    
    wire S0_bar,S1_bar,P,Q,R,S;
    
    not(S0_bar,S0);
    not(S1_bar,S1);
    and(P,A,S0_bar,S1_bar);
    and(Q,B,S0_bar,S1);
    and(R,C,S0,S1_bar);
    and(S,D,S0,S1);
    or(Z,P,Q,R,S);
    
endmodule
