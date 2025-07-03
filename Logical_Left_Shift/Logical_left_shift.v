`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 01:58:46 PM
// Design Name: 
// Module Name: Logical_left_shift
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


module Logical_left_shift(
    input wire [7:0]A,
    input wire [3:0]Shift_value,
    output reg [7:0]Logical_left_Shift_Output
    );
    
    always @(*) begin
        if(Shift_value <= 7) begin 
            Logical_left_Shift_Output = (A << Shift_value);
        end 
        else begin 
            $display("warning : shift value greater than 7 is ignored");
            Logical_left_Shift_Output = A;
        end 
    end 
endmodule
