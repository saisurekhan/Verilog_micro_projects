`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 02:43:36 PM
// Design Name: 
// Module Name: tb_Arithmetic_left_shift
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_Arithmetic_left_shift(
    );
    
    reg [7:0]A;
    reg [3:0]Shift_value;
    wire [7:0]Arithmetic_left_shift_Output;
    
    Arithmetic_left_shift uut (
    .A(A),
    .Shift_value(Shift_value),
    .Arithmetic_left_shift_Output(Arithmetic_left_shift_Output)
    );
    
    initial begin 
    $monitor("A = %b | Shift_value = %b | Arithmetic_left_shift_Output = %b",A,Shift_value,Arithmetic_left_shift_Output);
    A = 8'b00110011; Shift_value = 3'b010;
    #25;
    A = 8'b00001111; Shift_value = 3'b011;
    #25;
    A = 8'b00110011; Shift_value = 4'b1010;
    #25;
    $finish;
    end
endmodule
