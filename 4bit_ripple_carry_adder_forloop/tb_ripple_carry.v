`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 05:07:15 PM
// Design Name: 
// Module Name: tb_ripple_carry
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


module tb_ripple_carry(
    );
    
    reg [3:0]A;
    reg Cin;
    reg [3:0]B;
    wire Cout;
    wire [3:0]S;
    
    riplcary_add4b_for uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Cout(Cout),
    .S(S)
    );
    
    initial begin 
    #10;
    Cin = 0;
    A = 4'b0011;
    B = 4'b0011; ///3+3
    #150;
    Cin = 0;
    A = 4'b1000;
    B = 4'b0111;////8+7
    #150;
    Cin = 0;
    A = 4'b0110;
    B = 4'b0110;///6+6
    #150;
    $finish;
    end
endmodule
