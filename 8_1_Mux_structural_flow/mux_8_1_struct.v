`timescale 1ns / 1ps
'default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 09:42:33 PM
// Design Name: 
// Module Name: mux_8_1_struct
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


module mux_8_1_struct(
    input wire S2, S1,S0,
    input wire A,B,C,D,E,F,G,H,
    output wire Z
    );
    
    wire P,Q,R,S,T,U,V,W,S0_bar,S1_bar,S2_bar;
    
    not(S2_bar,S2);
    not(S1_bar,S1);
    not(S0_bar,S0);
    and(P,A,S2_bar,S1_bar,S0_bar);
    and(Q,B,S2_bar,S1_bar,S0);
    and(R,C,S2_bar,S1,S0_bar);
    and(S,D,S2_bar,S1,S0);
    and(T,E,S2,S1_bar,S0_bar);
    and(U,F,S2,S1_bar,S0);
    and(V,G,S2,S1,S0_bar);
    and(W,H,S2,S1,S0);
    or(Z,P,Q,R,S,T,U,V,W);
endmodule
