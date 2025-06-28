`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2025 03:24:15 PM
// Design Name: 
// Module Name: comparator_2b_behav_case
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


module comparator_2b_behav_case(
    input wire [1:0]A,B,
    output reg A_great_B,A_equal_B,A_less_B
    );
    
    always @(*) begin 
        A_great_B = 0;
        A_equal_B = 0;
        A_less_B = 0;
        case ({A,B}) 
            4'b0000 : begin 
                        A_equal_B = 1;
                      end  
            4'b0001 : begin 
                        A_less_B = 1;
                      end  
            4'b0010 : begin 
                        A_less_B = 1;
                      end  
            4'b0011 : begin 
                        A_less_B = 1;
                      end  
            4'b0100 : begin 
                        A_great_B = 1;
                      end  
            4'b0101 : begin 
                        A_equal_B = 1;
                      end  
            4'b0110 : begin 
                        A_less_B = 1;
                      end  
            4'b0111 : begin 
                        A_less_B = 1;
                      end  
            4'b1000 : begin 
                        A_great_B = 1;
                      end  
            4'b1001 : begin 
                        A_great_B = 1;
                      end  
            4'b1010 : begin 
                        A_equal_B = 1;
                      end  
            4'b1011 : begin 
                        A_less_B = 1;
                      end  
            4'b1100 : begin 
                        A_great_B = 1;
                      end  
            4'b1101 : begin 
                        A_great_B = 1;
                      end  
            4'b1110 : begin 
                        A_great_B = 1;
                      end  
            4'b1111 : begin 
                        A_equal_B = 1;
                      end  
         endcase
   
    end                 
endmodule
