`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 08:34:11 PM
// Design Name: 
// Module Name: encoder8_3_struct
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


module encoder8_3_struct(
    input en,
    input Y7,Y6,Y5,Y4,
    input Y3,Y2,Y1,Y0,
    output A2,A1,A0
    );
    
    wire A2_bar,A1_bar,A0_bar;
    
    or(A2_bar,Y4,Y5,Y6,Y7);
    or(A1_bar,Y2,Y3,Y6,Y7);
    or(A0_bar,Y1,Y3,Y5,Y7);
    and(A2,en,A2_bar);
    and(A1,en,A1_bar);
    and(A0,en,A0_bar);
    
endmodule
