`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2025 11:28:20 PM
// Design Name: 
// Module Name: half_adder_beh_case
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


module half_adder_beh_case(
    input wire A,B,
    output reg S,C
    );
    
    always@(*) begin 
        case ({A,B})
            2'b00 : begin
                    S = 0;
                    C = 0;
                    end 
            2'b01 : begin
                    S = 1;
                    C = 0;
                    end
            2'b10 : begin
                    S = 1;
                    C = 0;
                    end
            2'b11 : begin
                    S = 1;
                    C = 1;
                    end
         endcase
     end       
endmodule
