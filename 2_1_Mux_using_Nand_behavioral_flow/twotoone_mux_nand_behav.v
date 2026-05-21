`timescale 1ns / 1ps
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
