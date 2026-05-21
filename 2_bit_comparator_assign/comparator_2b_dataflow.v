`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator_2b_dataflow(
    input wire A1,A0,
    input wire B1,B0,
    output wire A_great_B,A_equal_B,A_less_B
    );
    
    ////A>B
    assign A_great_B = ( (A0 & (~(B1)) & (~(B0))) | (A1 & A0 & (~(B0))) | (A1 & (~(B1))) );
    ///A=B
    assign A_equal_B = ( (~(A1 ^ B1)) & (~(A0 ^ B0)) );
    ///A<B
    assign A_less_B = ( ((~(A0)) & B1 & B0) | ((~(A1)) & (~(A0)) & B0) | ((~(A1)) & B1) );
     
endmodule
