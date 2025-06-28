`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2025 04:45:49 PM
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
    
    reg en,Cin;
    reg A3,A2,A1,A0;
    reg B3,B2,B1,B0;
    wire S3,S2,S1,S0;
    wire Cout;
    
    riplcar_add4b_beh_case uut (
    .en(en),
    .Cin(Cin),
    .A3(A3),
    .A2(A2),
    .A1(A1),
    .A0(A0),
    .B3(B3),
    .B2(B2),
    .B1(B1),
    .B0(B0),
    .S3(S3),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Cout(Cout)
    );
    
    initial begin 
    #10;
    en = 1;
    A3 = 0; A2 = 1; A1 = 0; A0 = 1; ///5+5
    B3 = 0; B2 = 1; B1 = 0; B0 = 1;
    Cin = 0;
    #150;
     en = 1;
    A3 = 0; A2 = 1; A1 = 1; A0 = 0;//6+6
    B3 = 0; B2 = 1; B1 = 1; B0 = 0;
    Cin = 0;
    #150;
     en = 1;
    A3 = 0; A2 = 1; A1 = 1; A0 = 1;///7+7
    B3 = 0; B2 = 1; B1 = 1; B0 = 1;
    Cin = 0;
    #150;
    $finish;
    end   
endmodule
