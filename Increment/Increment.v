`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 11:51:52 AM
// Design Name: 
// Module Name: Increment
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


module Increment(
    input wire [7:0]A,
    output reg [7:0] Incremented_result
    );
    
   always @(*) begin
    assign Incremented_result = A +1;
   end 
endmodule
