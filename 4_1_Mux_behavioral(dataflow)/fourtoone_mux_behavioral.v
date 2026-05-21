`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
module fourtoone_mux_behavioral(
    input S0,
    input S1,
    input A,
    input B,
    input C,
    input D,
    output Z
    );
    
    wire S0_bar,S1_bar,P,Q,R,S;
    assign S0_bar = ~(S0);
    assign S1_bar = ~(S1);
    assign P = ( A & S0_bar & S1_bar);
    assign Q = ( B & S0_bar & S1);
    assign R = ( C & S0 & S1_bar);
    assign S = ( D & S0 & S1);
    assign Z = (P | Q | R | S);
endmodule
