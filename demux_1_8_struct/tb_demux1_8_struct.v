`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 06:28:49 PM
// Design Name: 
// Module Name: tb_demux1_8_struct
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


module tb_demux1_8_struct(

    );
    
    reg S3,S2,S1,A;
    wire Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8;
    
    demux1_8_struct uut(
    .S3(S3),
    .S2(S2),
    .S1(S1),
    .A(A),
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
    #25;
    S3 = 0; S2 = 0; S1 = 1; A = 1;
    #25;
    S3 = 0; S2 = 1; S1 = 0; A = 1;
    #25;
    S3 = 0; S2 = 1; S1 = 1; A = 1;
    #25;
    S3 = 1; S2 = 0; S1 = 0; A = 1;
    #25;
    S3 = 1; S2 = 0; S1 = 1; A = 1;
    #25;
    S3 = 1; S2 = 1; S1 = 0; A = 1;
    #25;
    S3 = 1; S2 = 1; S1 = 1; A = 1;
    #25;
    $finish;
    end 
endmodule
