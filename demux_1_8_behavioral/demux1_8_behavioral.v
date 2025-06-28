`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 06:35:54 PM
// Design Name: 
// Module Name: demux1_8_behavioral
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


module demux1_8_behavioral(
    input S3,S2,S1,A,
    output Y1,Y2,Y3,Y4,
    output Y5,Y6,Y7,Y8
    );
    
    wire S3_bar,S2_bar,S1_bar;
    
    assign S3_bar = ~(S3);
    assign S2_bar = ~(S2);
    assign S1_bar = ~(S1);
    
    assign Y1 = (A & S3_bar & S2_bar & S1_bar);
    assign Y2 = (A & S3_bar & S2_bar & S1);
    assign Y3 = (A & S3_bar & S2 & S1_bar);
    assign Y4 = (A & S3_bar & S2 & S1);
    assign Y5 = (A & S3 & S2_bar & S1_bar);
    assign Y6 = (A & S3 & S2_bar & S1);
    assign Y7 = (A & S3 & S2 & S1_bar);
    assign Y8 = (A & S3 & S2 & S1);

    
endmodule
