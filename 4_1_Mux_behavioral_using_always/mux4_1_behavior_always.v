`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////
module mux4_1_behavior_always(
    input S0,
    input S1,
    input A,
    input B,
    input C,
    input D,
    output reg Z
    );
    always@(*)begin
        if (S0 == 0 && S1 == 0)
            Z = A;
        else if (S0 == 0 && S1 == 1)
            Z = B;
        else if (S0 == 1 && S1 == 0)
            Z = C;
        else 
            Z = D;
        end 
            
    
endmodule
