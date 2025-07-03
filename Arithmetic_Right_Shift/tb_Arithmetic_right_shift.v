`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 01:16:16 PM
// Design Name: 
// Module Name: tb_Arithmetic_right_shift
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


module tb_Arithmetic_right_shift(
    );
    
    reg [7:0]A;
    reg [3:0]Shift_value;
    wire [7:0]Arithmetic_right_shift_Output;
    
    Arithmetic_right_shift uut (
    .A(A),
    .Shift_value(Shift_value),
    .Arithmetic_right_shift_Output(Arithmetic_right_shift_Output)
    );
    
    initial begin 
    $monitor("A = %b | Shift_value = %b | Arithmetic_right_shift_Output = %b",A,Shift_value,Arithmetic_right_shift_Output);
    A = 8'b00110011; Shift_value = 3'b010; 
    #25;
    A = 8'b11110000; Shift_value = 3'b011; 
    #25;
    A = 8'b10000000; Shift_value = 3'b111; 
    #25;
    A = 8'b10101010; Shift_value = 3'b000; 
    #25;
    A = 8'b00111100; Shift_value = 4'b1000; 
    #25;
    A = 8'b11111111; Shift_value = 3'b001; 
    #25;
    A = 8'b00000001; Shift_value = 3'b001; 
    #25;
    $finish;
    end 
endmodule
