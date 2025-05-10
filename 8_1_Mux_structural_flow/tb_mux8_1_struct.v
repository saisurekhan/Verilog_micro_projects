`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 09:48:57 PM
// Design Name: 
// Module Name: tb_mux8_1_struct
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


module tb_mux8_1_struct(

    );
    
    reg S2,S1,S0,A,B,C,D,E,F,G,H;
    wire Z;
    
    mux_8_1_struct uut (
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .E(E),
    .F(F),
    .G(G),
    .H(H),
    .Z(Z)
    );
    
    initial begin
    #10;
    S2 = 0; S1 = 0; S0 = 0; A = 1; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; H = 0;
    #25;
    S2 = 0; S1 = 0; S0 = 1; A = 0; B = 1; C = 0; D = 0; E = 0; F = 0; G = 0; H = 0;
    #25;
    S2 = 0; S1 = 1; S0 = 0; A = 0; B = 0; C = 1; D = 0; E = 0; F = 0; G = 0; H = 0;
    #25;
    S2 = 0; S1 = 1; S0 = 1; A = 0; B = 0; C = 0; D = 1; E = 0; F = 0; G = 0; H = 0;
    #25;
    S2 = 1; S1 = 0; S0 = 0; A = 0; B = 0; C = 0; D = 0; E = 1; F = 0; G = 0; H = 0;
    #25;
    S2 = 1; S1 = 0; S0 = 1; A = 0; B = 0; C = 0; D = 0; E = 0; F = 1; G = 0; H = 0;
    #25;
    S2 = 1; S1 = 1; S0 = 0; A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 1; H = 0;
    #25;
    S2 = 1; S1 = 1; S0 = 1; A = 0; B = 0; C = 0; D = 0; E = 0; F = 0; G = 0; H = 1;
    #25;
    $finish;
    end 
endmodule
