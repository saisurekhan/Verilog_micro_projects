`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
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
