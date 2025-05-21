`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 03:01:23 PM
// Design Name: 
// Module Name: demux1_4_struct
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


module demux1_4_struct(
    input S2,S1,A,
    output Y1,Y2,Y3,Y4
    );
    
    wire S2_bar, S1_bar;
    
    not(S2_bar,S2);
    not(S1_bar,S1);
    and(Y1,A,S2_bar,S1_bar);
    and(Y2,A,S2_bar,S1);
    and(Y3,A,S2,S1_bar);
    and(Y4,A,S2,S1);
endmodule
