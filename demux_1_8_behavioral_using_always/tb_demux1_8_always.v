`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 09:59:39 AM
// Design Name: 
// Module Name: tb_demux1_8_always
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


module tb_demux1_8_always(

    );
    
    reg A,S3,S2,S1;
    wire Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8;
    
    demux1_8_behav_always uut(
    .A(A),
    .S3(S3),
    .S2(S2),
    .S1(S1),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7),
    .Y8(Y8)
    );
    
    initial begin 
    #10;
    S3 = 0; S2 = 0; S1 = 0; A = 1;
    #50;
    S3 = 0; S2 = 0; S1 = 1; A = 1;
    #50;
    S3 = 0; S2 = 1; S1 = 0; A = 1;
    #50;
    S3 = 0; S2 = 1; S1 = 1; A = 1;
    #50;
    S3 = 1; S2 = 0; S1 = 0; A = 1;
    #50;
    S3 = 1; S2 = 0; S1 = 1; A = 1;
    #50;
    S3 = 1; S2 = 1; S1 = 0; A = 1;
    #50;
    S3 = 1; S2 = 1; S1 = 1; A = 1;
    #50;
    $finish;
    end
endmodule
