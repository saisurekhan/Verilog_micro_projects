`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 12:21:47 PM
// Design Name: 
// Module Name: or_using_nand
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


module or_using_nand(
    input A,
    input B,
    output Z
    );
 wire X,Y;
 assign X = ~(A & A);
 assign Y = ~(B & B);
 assign Z = ~(X & Y);
endmodule
