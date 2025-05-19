`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 02:36:38 PM
// Design Name: 
// Module Name: tb_demux1_2_behalways
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


module tb_demux1_2_behalways(

    );
    
    reg S,A;
    wire Y2,Y1;
    
    demux1_2beh_usealways uut (
    .S(S),
    .A(A),
    .Y2(Y2),
    .Y1(Y1)
    );
    
    initial begin 
    #10;
    S = 0; A = 0;
    #25;
    S = 1; A = 1;
    #25;
    S = 0; A = 1;
    #25;
    S = 1; A = 0;
    #25;
    $finish;
    end
    
endmodule
