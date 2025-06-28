`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 06:24:08 PM
// Design Name: 
// Module Name: demux1_8_struct
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


module demux1_8_struct(
    input S3,S2,S1,A,
    output Y1,Y2,Y3,Y4,
    output Y5,Y6,Y7, Y8
    );
    
    wire S3_bar,S2_bar,S1_bar;
    
    not(S3_bar,S3);
    not(S2_bar,S2);
    not(S1_bar,S1);
    and(Y1,A,S3_bar,S2_bar,S1_bar);
    and(Y2,A,S3_bar,S2_bar,S1);
    and(Y3,A,S3_bar,S2,S1_bar);
    and(Y4,A,S3_bar,S2,S1);
    and(Y5,A,S3,S2_bar,S1_bar);
    and(Y6,A,S3,S2_bar,S1);
    and(Y7,A,S3,S2,S1_bar);
    and(Y8,A,S3,S2,S1);
    
endmodule
