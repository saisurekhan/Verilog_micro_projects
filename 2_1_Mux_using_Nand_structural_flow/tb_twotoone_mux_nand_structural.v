`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 03:52:04 PM
// Design Name: 
// Module Name: tb_twotoone_mux_nand_structural
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


module tb_twotoone_mux_nand_structural(

    );
    
    reg A,B,S;
    wire Z;
    
    twotoone_mux_nand_structural uut(
    .S(S),
    .A(A),
    .B(B),
    .Z(Z)
    );
    
    initial begin
    
    #10;
    S = 0; A= 0;
    #25;
    S = 1; B= 1;
    #25;
    S = 0; A= 1;
    #25;
    S = 1; B= 0;
    #25;
    end 
    
endmodule
