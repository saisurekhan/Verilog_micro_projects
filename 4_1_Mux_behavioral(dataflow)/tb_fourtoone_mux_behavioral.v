`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 05:12:57 PM
// Design Name: 
// Module Name: tb_fourtoone_mux_behavioral
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


module tb_fourtoone_mux_behavioral(
    );
    
    reg S0,S1,A,B,C,D;
    wire Z;
    
    fourtoone_mux_behavioral uut (
    
    .S0(S0),
    .S1(S1),
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Z(Z)
    );
    
    initial begin
    #10;
    S0 = 0; S1 = 0; A = 1; B = 0; C = 0; D = 0;
    #25;
    S0 = 0; S1 = 1; B = 1; A = 0; C = 0; D = 0;
    #25;
    S0 = 1; S1 = 0; C = 1; B = 0; A = 0; D = 0;
    #25;
    S0 = 1; S1 = 1; D = 1; B = 0; C = 0; A = 0;
    #25;
    
    end
    
endmodule
