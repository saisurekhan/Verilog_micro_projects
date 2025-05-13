`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 10:02:16 PM
// Design Name: 
// Module Name: mux_8_1_behavioral
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


module mux_8_1_behavioral(
    input S2,
    input S1,
    input S0,
    input A,
    input B,
    input C,
    input D,
    input E,
    input F,
    input G,
    input H,
    output Z
    );
    
    wire P,Q,R,S,T,U,V,W,S2_bar,S1_bar,S0_bar;
    
    assign S2_bar = ~(S2);
    assign S1_bar = ~(S1);
    assign S0_bar = ~(S0);
    assign P = (A & S2_bar & S1_bar & S0_bar);
    assign Q = (B & S2_bar & S1_bar & S0);
    assign R = (C & S2_bar & S1 & S0_bar);
    assign S = (D & S2_bar & S1 & S0);
    assign T = (E & S2 & S1_bar & S0_bar);
    assign U = (F & S2 & S1_bar & S0);
    assign V = (G & S2 & S1 & S0_bar);
    assign W = (H & S2 & S1 & S0);
    assign Z = (P | Q | R | S | T | U | V | W);
endmodule
