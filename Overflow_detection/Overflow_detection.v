`timescale 1ns / 1ps
`default_nettype none 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 12:45:18 PM
// Design Name: 
// Module Name: Overflow_detection
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
////////////////////////////////////////////////// Overflow detection is based on signed 2's complement arithmetic.
// Triggers only when result sign is incorrect for signed addition.
//////////////////////////////////


module Overflow_detection(
    input wire [7:0]A,B,Result,
    output reg Overflow_flag_bit
    );
    
    always @(*) begin 
        if(Result[7] == 1 && A[7] == 0 && B[7] == 0) begin 
            Overflow_flag_bit = 1;
        end
        else if (Result[7] == 0 && A[7] == 1 && B[7] == 1) begin
             Overflow_flag_bit = 1;
        end 
        else begin
            Overflow_flag_bit = 0;
        end 
    end 
endmodule
