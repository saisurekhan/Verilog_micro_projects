`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 05:26:07 PM
// Design Name: 
// Module Name: comparator_4b_behavioral
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


module comparator_4b_behavioral(
    input wire [3:0]A,B,
    output reg A_great_B,A_equal_B,A_less_B
    );
    
    always @(*) begin 
        A_great_B = 0;
        A_equal_B = 0;
        A_less_B = 0;

        
        if(A[3] > B[3]) begin 
            A_great_B = 1;
        end 
        else if ((A[3] == B[3]) && (A[2] > B[2])) begin 
            A_great_B = 1;
        end 
        else if ((A[3] == B[3]) && (A[2] == B[2]) && (A[1] > B[1])) begin 
            A_great_B = 1;
        end 
        else if ((A[3] == B[3]) && (A[2] == B[2]) && (A[1] == B[1]) && (A[0] > B[0])) begin 
            A_great_B = 1;
        end 
        if ((A[3] == B[3]) && (A[2] == B[2]) && (A[1] == B[1]) && (A[0] == B[0])) begin 
            A_equal_B = 1;
        end
        if(A[3] < B[3]) begin 
            A_less_B = 1;
        end 
        else if ((A[3] == B[3]) && (A[2] < B[2])) begin 
            A_less_B = 1;
        end 
        else if ((A[3] == B[3]) && (A[2] == B[2]) && (A[1] < B[1])) begin 
            A_less_B = 1;
        end 
        else if ((A[3] == B[3]) && (A[2] == B[2]) && (A[1] == B[1]) && (A[0] < B[0])) begin 
            A_less_B = 1;
        end 
   end 
endmodule
