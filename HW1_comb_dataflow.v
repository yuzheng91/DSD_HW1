`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/01 12:53:50
// Design Name: 
// Module Name: HW1_comb_dataflow
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


module HW1_comb_dataflow(A,B,C,D,F);
    input A, B, C, D;
    output F;
    assign F = (~A & ~D) |(A & ~B) | (B & ~C);
endmodule
