`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 02:04:47 PM
// Design Name: 
// Module Name: tb_logical_left_shift
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


module tb_logical_left_shift(
    );
    
    reg [7:0]A;
    reg [3:0]Shift_value;
    wire [7:0]Logical_left_Shift_Output;
    
    Logical_left_shift uut(
    .A(A),
    .Shift_value(Shift_value),
    .Logical_left_Shift_Output(Logical_left_Shift_Output)
    );
    
    initial begin 
    $monitor("A = %b | Shift_value = %b | Logical_left_Shift_Output = %b",A,Shift_value,Logical_left_Shift_Output);
    A = 8'b00110011; Shift_value = 3'b011;
    #25;
    A = 8'b11110000; Shift_value = 3'b100;
    #25;
    A = 8'b00110010; Shift_value = 4'b1000;
    #25;
    $finish;
    end
endmodule
