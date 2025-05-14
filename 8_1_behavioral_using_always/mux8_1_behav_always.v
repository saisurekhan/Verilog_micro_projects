`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 10:22:41 PM
// Design Name: 
// Module Name: mux8_1_behav_always
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


module mux8_1_behav_always(
    input S2,S1,S0,
    input A,B,C,D,E,F,G,H,
    output reg Z
    );
    
    always @(*)begin 
    if (S2 == 0 && S1 == 0 && S0 == 0)
        Z = A;
    else if (S2 == 0 && S1 == 0 && S0 == 1)
        Z = B;
    else if (S2 == 0 && S1 == 1 && S0 == 0)
        Z = C;
    else if (S2 == 0 && S1 == 1 && S0 == 1)
        Z = D;
    else if (S2 == 1 && S1 == 0 && S0 == 0)
        Z = E;
    else if (S2 == 1 && S1 == 0 && S0 == 1)
        Z = F;
    else if (S2 == 1 && S1 == 1 && S0 == 0)
        Z = G;
    else 
        Z = H;
    end 
        
endmodule
