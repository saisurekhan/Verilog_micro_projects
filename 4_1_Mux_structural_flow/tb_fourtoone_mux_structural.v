`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 04:47:14 PM
// Design Name: 
// Module Name: tb_fourtoone_mux_structural
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


module tb_fourtoone_mux_structural(
    );
    
    reg S0,S1,A,B,C,D;
    wire Z;
    
    fourtoone_mux_structural uut(
    .S0(S0),
    .S1(S1),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Z(Z)
    );
    
    initial begin 
    #25;
    S0 = 0 ; S1 = 0; A = 1; B = 0; C= 0; D = 0;
    #25;
    S0 = 0 ; S1 = 1; B = 1; A = 0; C = 0; D = 0;
    #25;
    S0 = 1 ; S1 = 0; C = 1; A = 0; B = 0; D = 0;
    #25;
    S0 = 1 ; S1 = 1; D = 1; A = 0; B = 0; C = 0;
    #25;
    
    end
    
endmodule
