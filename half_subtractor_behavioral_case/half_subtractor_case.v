`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2025 06:26:28 PM
// Design Name: 
// Module Name: half_subtractor_case
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


module half_subtractor_case(
    input wire A,B,en,
    output reg Y,borrow
    );
    
    always @(*) begin
        case(en)
            1'b1: begin
                    Y = (A ^ B);
                    borrow = ((~(A)) & B);
                  end 
            1'b0: begin 
                    Y = 0;
                    borrow = 0;
                  end 
         endcase 
    end   
endmodule
