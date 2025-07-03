`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 03:17:57 PM
// Design Name: 
// Module Name: tb_Barrel_Shift
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


module tb_Barrel_Shift(
    );
    
    reg [7:0]A;
    reg [3:0]Shift_value;
    reg Direction_input,Mode;
    wire [7:0]Barrel_shift_Output;
    
    Barrel_Shift uut(
    .A(A),
    .Shift_value(Shift_value),
    .Direction_input(Direction_input),
    .Mode(Mode),
    .Barrel_shift_Output(Barrel_shift_Output)
    );
    
    initial begin 
    $monitor("A = %b | Shift_value = %b | Direction_input = %b | Barrel_shift_Output = %b",A,Shift_value,Direction_input,Barrel_shift_Output);
    A = 8'b00110011; Shift_value = 3'b010; Direction_input = 0; Mode = 0; ///51
    #100;
    A = 8'b00110011; Shift_value = 3'b010; Direction_input = 1; Mode = 0; ///51
    #100;
    A = 8'b11110000; Shift_value = 3'b011; Direction_input = 1; Mode = 1; ///--16
    #100;
    A = 8'b00110011; Shift_value = 3'b011; Direction_input = 1; Mode = 0; ////-16
    #100;
    A = 8'b10101010; Shift_value = 3'b000; Direction_input = 1; Mode = 0; ////-86
    #100;
    A = 8'b10000000; Shift_value = 3'b111; Direction_input = 1; Mode = 1;   ////-128
    #100;
    A = 8'b00000001; Shift_value = 3'b111; Direction_input = 1; Mode = 0;  ////1
    #100;
    A = 8'b01111111; Shift_value = 3'b111; Direction_input = 1; Mode = 1; ///127
    #100;
    A = 8'b10000001; Shift_value = 3'b001; Direction_input = 0; Mode = 0; ///-127
    #50;
    $finish;
    end
endmodule
