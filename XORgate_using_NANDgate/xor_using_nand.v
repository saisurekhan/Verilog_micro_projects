`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 12:39:39 PM
// Design Name: 
// Module Name: xor_using_nand
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


module xor_using_nand(
    input A,
    input B,
    output Z
    );
    
    wire X,Y,P,Q;
    assign X = ~(A & A);
    assign Y = ~(B & B); 
    assign P = ~(X & Q);
    assign Q = ~(Y & P);
    assign Z = ~(P & Q);
endmodule
