`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 03:22:30 PM
// Design Name: 
// Module Name: tb_demux1_4_behavioral
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


module tb_demux1_4_behavioral(

    );
    
    reg S2,S1,A;
    wire Y4,Y3,Y2,Y1;
    
    demux1_4_behavioral uut(
    .S2(S2),
    .S1(S1),
    .A(A),
    .Y4(Y4),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
    );
    
    initial begin 
    #50;
    S2 = 0; S1 = 0; A = 1;
    #25;
    S2 = 0; S1 = 1; A = 1;
    #25;
    S2 = 1; S1 = 0; A = 1;
    #25;
    S2 = 1; S1 = 1; A = 1;
    #25;
    $finish;
    end
endmodule
