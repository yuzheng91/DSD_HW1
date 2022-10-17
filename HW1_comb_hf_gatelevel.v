`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/09 23:01:30
// Design Name: 
// Module Name: HW1_comb_hf_gatelevel
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


module HW1_comb_hf_gatelevel(A, B, C, D, F);
    input A, B, C, D;
    output F;
    wire notD, notC, notA, notB, orABD, orACD, orABC, orBCD;
    not #10 G1(notA, A);
    not #10 G2(notB, B);
    not #10 G3(notC, C);
    not #10 G4(notD, D);
    or #10 G5(orABD, A, B, notD);
    or #10 G6(orACD, A, notC, notD);
    or #10 G7(orABC, notA, notB, notC);
    or #10 G8(orBCD, notb, notC, notD);
    and #10 G9(F, orACD, orABC, orACD);
endmodule
