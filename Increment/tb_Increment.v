`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 11:55:15 AM
// Design Name: 
// Module Name: tb_Increment
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


module tb_Increment(
    );
    
    reg [7:0]A;
    wire [7:0] Incremented_result;
    
    Increment uut (
    .A(A),
    .Incremented_result(Incremented_result)
    );
    
    initial begin 
    $monitor("A = %b | Incremented_result = %b",A,Incremented_result);
    A = 8'b00110011;
    #25;
    A = 8'b00111100;
    #25;
    $finish;
    end  
endmodule
