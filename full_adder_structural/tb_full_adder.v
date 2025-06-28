`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/08/2025 03:41:34 PM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder(
    );
    
    reg A,B,Cin;
    wire S,Cout;
    
    full_adder_structural uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
    );
    
    initial begin 
    #10;
    A = 0; B = 0; Cin = 0;
    #25;
    A = 0; B = 0; Cin = 1;
    #25;
    A = 0; B = 1; Cin = 0;
    #25;
    A = 0; B = 1; Cin = 1;
    #25;
    A = 1; B = 0; Cin = 0;
    #25;
    A = 1; B = 0; Cin = 1;
    #25;
    A = 1; B = 1; Cin = 0;
    #25;
    A = 1; B = 1; Cin = 1;
    #25;
    $finish;
    end
endmodule
