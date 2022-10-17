`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/09 16:23:50
// Design Name: 
// Module Name: HW1_comb_gatelevel
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


module HW1_comb_gatelevel(A, B, C, D, F);
    input A, B, C, D;
    output F;
    wire notD, notA, orAB, notB, notC, andAD, orBC, andBC;
    not #10 G1(notD, D);
    not #10 G2(notA, A);
    or #10 G3(orAB, A, B);
    not #10 G4(notB, B);
    not #10 G5(notC, C);
    and #10 G6(andAD, notA, notD);
    or #10 G7(orBC, notB, notC);
    and #10 G8(andBC, orAB, orBC);
    or #10  G9(F, andAD, andBC);
endmodule
