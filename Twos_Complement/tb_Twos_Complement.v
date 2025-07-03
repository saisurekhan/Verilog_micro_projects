`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/30/2025 12:30:49 PM
// Design Name: 
// Module Name: tb_Twos_Complement
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


module tb_Twos_Complement(
    );
    
    reg [7:0]A;
    wire [7:0]Twos_Complement_Output;
    
    Twos_Complement uut(
    .A(A),
    .Twos_Complement_Output(Twos_Complement_Output)
    );
    
    initial begin 
    $monitor("A = %b | Twos_Complement_Output = %b", A,Twos_Complement_Output);
    A = 8'b00110011; 
    #25;
    A = 8'b00001111; 
    #25;
    $finish;
    end
endmodule
