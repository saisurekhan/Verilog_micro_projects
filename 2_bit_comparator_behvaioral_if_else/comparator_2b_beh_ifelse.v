`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////


module comparator_2b_beh_ifelse(
    input wire A1,A0,B1,B0,
    output reg A_great_B,A_equal_B,A_less_B
    );
    
    

    
    always @(*) begin 
        A_great_B = 0;
        A_equal_B = 0;
        A_less_B = 0;
        if ( A1 > B1) begin 
             A_great_B = 1;
        end
        else if (A1 == B1 && A0 > B0) begin
             A_great_B = 1;
        end
        else if (A1 == B1 && A0 == B0) begin 
             A_equal_B = 1;
        end 
        else if (A1 < B1) begin 
             A_less_B = 1;
        end 
        else 
             A_less_B = 1;
         
   end 
endmodule
