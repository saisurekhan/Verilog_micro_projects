`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 02:35:39 PM
// Design Name: 
// Module Name: Arithmetic_left_shift
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


module Arithmetic_left_shift(
    input wire [7:0]A,
    input wire [3:0]Shift_value,
    output reg [7:0]Arithmetic_left_shift_Output
    );
    
    always @(*) begin 
        if(Shift_value <= 7) begin 
            Arithmetic_left_shift_Output = (A <<< Shift_value);
        end
        else begin 
            $display("Warning : Shift value is > 7, Arithmetic Left Shift ignored");
            Arithmetic_left_shift_Output = A;
        end
    end  
endmodule
