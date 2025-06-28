`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 11:20:26 PM
// Design Name: 
// Module Name: half_adder_behav_alw
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


module half_adder_behav_alw(
    input wire A,B,
    output reg S,C
    );
    
    always @(*) begin
        if ( A == 0 && B == 0) begin
            S = 0;
            C = 0;
        end 
        else if ( A == 0 && B == 1) begin
            S = 1;
            C = 0;
        end 
        else if ( A == 1 && B == 0) begin
            S = 1;
            C = 0;
        end 
        else if ( A == 1 && B == 1) begin
            S = 1;
            C = 1;
        end 
    end
endmodule
