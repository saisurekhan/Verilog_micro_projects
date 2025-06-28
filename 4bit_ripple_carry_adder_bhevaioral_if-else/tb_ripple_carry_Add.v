`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 04:21:03 PM
// Design Name: 
// Module Name: tb_ripple_carry_Add
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


module tb_ripple_carry_Add(

    );
    
    reg A3,A2,A1,A0;
    reg B3,B2,B1,B0;
    reg Cin,en;
    wire S3,S2,S1,S0;
    wire Cout;
    
    ripl_cary_add_4b_beh_alw uut (
    .A3(A3),
    .A2(A2),
    .A1(A1),
    .A0(A0),
    .B3(B3),
    .B2(B2),
    .B1(B1),
    .B0(B0),
    .en(en),
    .Cin(Cin),
    .Cout(Cout),
    .S3(S3),
    .S2(S2),
    .S1(S1),
    .S0(S0)
    );
    
    initial begin
    #10;
    en = 1;
    A3 = 0; A2 = 0; A1 = 1; A0 = 1;///3+5
    B3 = 0; B2 = 1; B1 = 0; B0 = 1;
    Cin = 0;
    #150;
    en = 1;
    A3 = 0; A2 = 1; A1 = 0; A0 = 1;///5+5
    B3 = 0; B2 = 1; B1 = 0; B0 = 1;
    Cin = 0;
    #150;
    en = 1;
    A3 = 0; A2 = 1; A1 = 1; A0 = 0;///6+6
    B3 = 0; B2 = 1; B1 = 1; B0 = 0;
    Cin = 0;
    #150;
    $finish;
    end   
endmodule
