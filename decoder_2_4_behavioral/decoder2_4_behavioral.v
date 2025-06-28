`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 11:18:56 AM
// Design Name: 
// Module Name: decoder2_4_behavioral
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


module decoder2_4_behavioral(
    input enable,
    input A,B,
    output Y0,Y1,Y2,Y3
    );
    
    wire A_bar,B_bar;
    
    assign A_bar = ~(A);
    assign B_bar = ~(B);    
    assign Y0 = (enable & A_bar & B_bar);
    assign Y1 = (enable & A_bar & B);
    assign Y2 = (enable & A & B_bar);
    assign Y3 = (enable & A & B);
    
endmodule
