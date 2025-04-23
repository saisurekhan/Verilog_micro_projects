`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2025 02:57:36 PM
// Design Name: 
// Module Name: AND_using_Nand
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


module AND_using_Nand(
    input A,
    input B,
    output Y,
    output Z
    );
    
    assign Y = ~( A & B );
    assign Z = ~ (Y & Y);
   
endmodule

