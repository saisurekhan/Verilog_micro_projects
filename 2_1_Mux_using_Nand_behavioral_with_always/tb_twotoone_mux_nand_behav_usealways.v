`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 04:13:00 PM
// Design Name: 
// Module Name: tb_twotoone_mux_nand_behav_usealways
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


module tb_twotoone_mux_nand_behav_usealways(

    );
    
    reg S,A,B;
    wire Z;
    
    twotoone_mux_nand_behav_using_always uut(
    .S(S),
    .A(A),
    .B(B),
    .Z(Z)
    );
    
    initial begin 
    #10;
    S = 0 ; A = 0;
    #25;
    S = 1 ; B = 1;
    #25;
    S = 0 ; A = 1;
    #25;
    S = 1 ; B = 0;
    #25;
    end 
    
endmodule
