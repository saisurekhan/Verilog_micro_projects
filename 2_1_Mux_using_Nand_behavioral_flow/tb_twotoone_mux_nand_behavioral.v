`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_twotoone_mux_nand_behavioral(

    );
    
    reg S,A,B;
    wire Z;
    
    twotoone_mux_nand_behav uut(
    .S(S),
    .A(A),
    .B(B),
    .Z(Z)
    );
    
    initial begin
    
    #10;
    S = 0; A = 0;
    #25;
    S = 1; B = 1;
    #25;
    S = 0; A = 1;
    #25;
    S = 1; B = 0;
    #25;
    end 
    
endmodule
