`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 02:08:05 PM
// Design Name: 
// Module Name: demux1_2_behav
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


module demux1_2_behav(
    input S,A,
    output Y2,Y1
    );
    
    wire S_bar;
    
    assign S_bar = ~(S);
    assign Y2 = (A & S);
    assign Y1 = (A & S_bar);
    
    
endmodule
