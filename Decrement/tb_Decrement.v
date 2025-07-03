`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 12:09:24 PM
// Design Name: 
// Module Name: tb_Decrement
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


module tb_Decrement(
    );
    
    reg [7:0]A;
    wire [7:0] Decremented_Result;
    
    Decrement uut (
    .A(A),
    .Decremented_Result(Decremented_Result)
    );
    
    initial begin 
    A = 8'b00111111;
    #25;
    A = 8'b00001100;
    #25;
    $finish;
    end
endmodule
