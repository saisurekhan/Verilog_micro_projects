`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 01:48:17 PM
// Design Name: 
// Module Name: demux1_2_struc
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


module demux1_2_struc(
    input S,A,
    output Y2,Y1
    );
    
    wire S_bar;
    
    not(S_bar,S);
    and(Y2,S,A);
    and(Y1,S_bar,A);
    
endmodule




