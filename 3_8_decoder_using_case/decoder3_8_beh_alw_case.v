`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2025 02:31:23 PM
// Design Name: 
// Module Name: decoder3_8_beh_alw_case
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


module decoder3_8_beh_alw_case(
    input en,A,B,C,
    output reg Y0,Y1,Y2,Y3,
    output reg Y4,Y5,Y6,Y7
    );
    
    wire A_bar,B_bar,C_bar;
    
    assign A_bar = ~(A);
    assign B_bar = ~(B);
    assign C_bar = ~(C);
    
    always @(*) begin 
        case(en)
        1'b0 : begin 
                Y0 = 0 ; 
                Y1 = 0 ;
                Y2 = 0 ;
                Y3 = 0 ;
                Y4 = 0 ;
                Y5 = 0 ;
                Y6 = 0 ;
                Y7 = 0 ;
               end 
         1'b1 : begin 
                Y0 = (en & A_bar & B_bar & C_bar) ; 
                Y1 = (en & A_bar & B_bar & C) ;
                Y2 = (en & A_bar & B & C_bar) ;
                Y3 = (en & A_bar & B & C) ;
                Y4 = (en & A & B_bar & C_bar) ;
                Y5 = (en & A & B_bar & C) ;
                Y6 = (en & A & B & C_bar) ;
                Y7 = (en & A & B & C) ;
               end 
          endcase 
      end 
endmodule
