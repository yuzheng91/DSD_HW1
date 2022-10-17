`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/15 13:34:40
// Design Name: 
// Module Name: t_HW1_sub2
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


module t_HW1_sub2();
    wire B1, B2, B3, D1, D2, D3;
    reg X, CLK, CLR;
    
    HW1_sub2_behavioral M1(
        .D(D1), 
        .B(B1), 
        .X(X), 
        .CLK(CLK), 
        .CLR(CLR)
    );
    
    HW1_sub2_dataflow M2(
        .D(D2),
        .B(B2),
        .X(X),
        .CLK(CLK),
        .CLR(CLR)
    );
    
    HW1_sub2_structural M3(
        .D(D3),
        .B(B3),
        .X(X),
        .CLK(CLK),
        .CLR(CLR)
    );
    initial begin
    $dumpfile("t_HW1_sub2_behavioral.vcd");
        $dumpvars;
    CLR <= 1'b1;
    CLK <= 1'b0; 
    X <= 1'b1;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b1;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b1;
    #5 X <= 1'b1;
    #5 X <= 1'b0;
    #5 X <= 1'b1;
    #5 X <= 1'b1;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b0;
    #5 X <= 1'b1;
    #5 X <= 1'b0;
    end
    always #10 CLK = ~CLK;
    initial #200 $finish;
endmodule
