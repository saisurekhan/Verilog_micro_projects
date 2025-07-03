`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 12:26:51 PM
// Design Name: 
// Module Name: Twos_Complement
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


module Twos_Complement(
    input wire [7:0]A,
    output reg [7:0]Twos_Complement_Output
    );
    
    always @(*) begin
        Twos_Complement_Output = (~(A)) + 1;
    end
endmodule
