`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////

module twotoone_mux(
    input wire A,B,S,
    output wire Z
    );
    
   wire X,Y,S_bar;
   not(S_bar,S);
    and (X,A, S_bar);
   and (Y,B,S);
   or(Z,X,Y);
       
endmodule
