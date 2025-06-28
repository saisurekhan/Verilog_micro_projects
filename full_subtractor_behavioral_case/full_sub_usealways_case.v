`timescale 1ns / 1ps
`default_nettype none 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 02:14:18 PM
// Design Name: 
// Module Name: full_sub_usealways_case
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


module full_sub_usealways_case(
    input wire en,A,B,borrow_in,
    output reg Y,borrow_out
    );
    
    always @(*) begin
        case(en)
            1'b1 : begin
                    Y = (A ^ B ^ borrow_in);
                    borrow_out = (((~(A)) & B) | (borrow_in & (~(A ^ B))));
                   end
             1'b0 : begin 
                     Y = 0;
                     borrow_out = 0;
                    end
        endcase
    end 
endmodule
