`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/09 23:05:50
// Design Name: 
// Module Name: t_HW1_comb
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


module t_HW1_comb();
    wire F1, F2, F3;
    reg A, B, C, D;
 
    HW1_comb_dataflow M1(
        .A(A),
        .B(B),
        .C(C),
        .D(D), 
        .F(F1)
    );
    HW1_comb_gatelevel M2(
        .A(A),
        .B(B),
        .C(C),
        .D(D), 
        .F(F2)
    );
    HW1_comb_hf_gatelevel M3(
        .A(A),
        .B(B),
        .C(C),
        .D(D), 
        .F(F3)
    );
    initial begin
    $dumpfile("t_HW1_comb.vcd");
        $dumpvars;
    A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1;
    end
    initial #200 $finish;
endmodule
