`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////

module twotoone_mux_behavioral(
    input wire A,
    input wire B,
    input wire S,
    output wire Z
    );
    
    wire X,Y,S_bar;
    assign S_bar = ~(S);
    assign X = (A & S_bar);
    assign Y = (B & S);
    assign Z = (X | Y);
    
endmodule
