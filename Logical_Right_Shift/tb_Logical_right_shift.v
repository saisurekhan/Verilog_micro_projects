`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 02:25:46 PM
// Design Name: 
// Module Name: tb_Logical_right_shift
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


module tb_Logical_right_shift(
    );
    
    reg [7:0]A;
    reg [3:0]Shift_value;
    wire [7:0]Logical_right_shift_Output;
    
    Logical_right_shift uut (
    .A(A),
    .Shift_value(Shift_value),
    .Logical_right_shift_Output(Logical_right_shift_Output)
    );
    
    initial begin
    $monitor("A = %b | Shift_value = %b | Logical_right_shift_Output = %b",A,Shift_value,Logical_right_shift_Output);
    A = 8'b00110011; Shift_value = 3'b010;
    #25;
    A = 8'b11110000; Shift_value = 3'b100;
    #25;
    A = 8'b00111100; Shift_value = 4'b1010;
    #25;
    $finish;
    end
endmodule
