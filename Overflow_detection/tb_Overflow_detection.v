`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 01:14:39 PM
// Design Name: 
// Module Name: tb_Overflow_detection
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


module tb_Overflow_detection(
    );
    
    reg [7:0]A,B,Result;
    wire Overflow_flag_bit;
    
    Overflow_detection uut(
    .A(A),
    .B(B),
    .Result(Result),
    .Overflow_flag_bit(Overflow_flag_bit)
    );
    
    initial begin 
    $monitor("A = %b | B = %b | Result = %b | Overflow_flag_bit = %b",A,B,Result,Overflow_flag_bit);
    A = 8'd100; B = 8'd50; Result = 8'd150;
    #25;
    A = 8'd127; B = 8'd1; Result = -8'd128;
    #25;
    A = -8'd100; B = -8'd40; Result = 8'd116;
    #25;
    A = -8'd50; B = 8'd20; Result = -8'd30;
    #25;
    A = 8'd80; B = -8'd90; Result = -8'd10;
    #25;
    A = -8'd128; B = -8'd1; Result = 8'd127;
    #25;
    $finish;
    end
endmodule
