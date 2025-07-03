`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 12:07:22 PM
// Design Name: 
// Module Name: Decrement
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


module Decrement(
    input wire [7:0]A,
    output reg [7:0]Decremented_Result
    );
    
    always @(*) begin
        Decremented_Result = A - 1;
    end
endmodule
