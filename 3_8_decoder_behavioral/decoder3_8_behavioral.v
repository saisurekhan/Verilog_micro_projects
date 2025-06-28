`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 04:21:33 PM
// Design Name: 
// Module Name: decoder3_8_behavioral
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


module decoder3_8_behavioral(
    input A,B,C,en,
    output Y0,Y1,Y2,Y3,
    output Y4,Y5,Y6,Y7
    );
    
    wire A_bar,B_bar,C_bar;
    assign A_bar = ~(A);
    assign B_bar = ~(B);
    assign C_bar = ~(C);
    assign Y0 = (en & A_bar & B_bar & C_bar);
    assign Y1 = (en & A_bar & B_bar & C);
    assign Y2 = (en & A_bar & B & C_bar);
    assign Y3 = (en & A_bar & B & C);
    assign Y4 = (en & A & B_bar & C_bar);
    assign Y5 = (en & A & B_bar & C);
    assign Y6 = (en & A & B & C_bar);
    assign Y7 = (en & A & B & C);
    
endmodule
