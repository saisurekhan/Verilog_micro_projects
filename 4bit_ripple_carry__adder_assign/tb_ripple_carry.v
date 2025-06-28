`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 09:18:58 PM
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
    
    reg A3,A2,A1,A0;
    reg B3,B2,B1,B0;
    reg Cin;
    wire S3,S2,S1,S0,Cout;
    
    riplcary_add_4b_beh uut(
    .A3(A3),
    .A2(A2),
    .A1(A1),
    .A0(A0),
    .B3(B3),
    .B2(B2),
    .B1(B1),
    .B0(B0),
    .Cin(Cin),
    .S3(S3),
    .S2(S2),
    .S1(S1),
    .S0(S0),
    .Cout(Cout)
    );
    
    initial begin 
    #10;
    A3 = 0; A2 = 0; A1 = 1; A0 = 1;
    B3 = 0; B2 = 1; B1 = 0; B0 = 0; ////3+4
    Cin = 0;
    #150;
    A3 = 0; A2 = 1; A1 = 1; A0 = 0;
    B3 = 0; B2 = 0; B1 = 1; B0 = 1;///6+3
    Cin = 0;
    #150;
    A3 = 0; A2 = 1; A1 = 0; A0 = 1;///5+8
    B3 = 1; B2 = 0; B1 = 0; B0 = 0;
    Cin = 0;
    #150;
    $finish;
    end  
endmodule
