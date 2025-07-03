`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 02:21:08 PM
// Design Name: 
// Module Name: Logical_right_shift
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
//////////////////////// No overflow detection needed: Logical Right Shift inserts 0s and does not preserve sign/////////////////////////////////


module Logical_right_shift(
    input wire [7:0]A,
    input wire [3:0]Shift_value,
    output reg [7:0]Logical_right_shift_Output
    );
    
    always @(*) begin 
        if(Shift_value <= 7) begin 
            Logical_right_shift_Output = ( A >> Shift_value);
        end 
        else begin 
            $display("Warning : when shift value is > 7, Logical shift is ignored");
            Logical_right_shift_Output = A;
        end 
    end 
endmodule
