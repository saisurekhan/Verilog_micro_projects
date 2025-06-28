`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 09:01:56 PM
// Design Name: 
// Module Name: encoder8_3_behav
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


module encoder8_3_behav(
    input en,
    input Y7,Y6,Y5,Y4,
    input Y3,Y2,Y1,Y0,
    output A2,A1,A0
    );
    
    wire A2_bar,A1_bar,A0_bar;
    assign A2_bar = (Y4 | Y5 | Y6 | Y7);
    assign A1_bar = (Y2 | Y3 | Y6 | Y7);
    assign A0_bar = (Y1 | Y3 | Y5 | Y7);
    assign A2 = (en & A2_bar);
    assign A1 = (en & A1_bar);
    assign A0 = (en & A0_bar);
endmodule
