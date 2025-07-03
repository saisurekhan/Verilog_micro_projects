`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 12:57:40 PM
// Design Name: 
// Module Name: Arithmetic_right_shift
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


module Arithmetic_right_shift(
    input wire [7:0]A,
    input wire [3:0]Shift_value,
    output reg [7:0]Arithmetic_right_shift_Output
    );
    
    
    always @(*) begin 
        if(Shift_value <= 7 && A[7] == 0) begin 
            Arithmetic_right_shift_Output = (A >>> Shift_value);
        end 
        else if (Shift_value <= 7 && A[7] == 1) begin 
            Arithmetic_right_shift_Output = ($signed(A) >>> Shift_value);
        end
        else if (Shift_value > 7) begin
            $display("Warning : if shift value > 7, arithmetic right shift is ignored");
            Arithmetic_right_shift_Output = A;
        end 
   end 
endmodule
