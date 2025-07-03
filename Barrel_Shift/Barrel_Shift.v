`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2025 03:09:33 PM
// Design Name: 
// Module Name: Barrel_Shift
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


module Barrel_Shift(
    input wire [7:0]A,
    input wire [3:0]Shift_value,
    input wire Direction_input,Mode,
    output reg [7:0]Barrel_shift_Output
    );
    
    always @(*) begin
        if(Direction_input == 0) begin 
            if(Mode == 0 || Mode == 1) begin
                if(Shift_value <= 7) begin
                    Barrel_shift_Output = (A <<< Shift_value);
                end                                              ///end of left shift
            end                                                   ///end of mode==0 || mode==1
        end                                                       ////end of direction==0
        else if(Direction_input == 1) begin
                if(Mode == 0) begin 
                    if (Shift_value <= 7) begin
                        Barrel_shift_Output = (A >>> Shift_value);
                    end                                          ///end of right shift
                end                                             ///end of mode==0
                else if(Mode == 1) begin 
                        if (Shift_value <= 7 && A[7] == 0 ) begin
                            Barrel_shift_Output = (A >>> Shift_value);
                        end                                               //end of arithmetic right shift-1
                        else if(Shift_value <= 7 && A[7] == 1) begin
                            Barrel_shift_Output = ($signed(A) >>> Shift_value);
                        end                                                   //end of airhtmetic right shift -2 
                end                                                           // end of mode == 1
        end                                                                   //end of direction == 1
        else begin 
            $display("Barrel Shift Ignored because Shift_value is >7");
            Barrel_shift_Output = A;  
        end                                                                      
         
   end                                                                       //end of always block
endmodule

