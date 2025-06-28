`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 03:18:59 PM
// Design Name: 
// Module Name: demux1_4_behavioral
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


module demux1_4_behavioral(
    input S2,S1,A,
    output Y4,Y3,Y2,Y1
    );
    
    wire S2_bar,S1_bar;
    
    assign S2_bar = ~(S2);
    assign S1_bar = ~(S1);
    assign Y1 = A & S2_bar & S1_bar;
    assign Y2 = A & S2_bar & S1;
    assign Y3 = A & S2 & S1_bar;
    assign Y4 = A & S2 & S1;
    
endmodule
