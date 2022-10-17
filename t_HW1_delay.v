`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/14 16:11:51
// Design Name: 
// Module Name: t_HW1_delay
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


module t_HW1_delay();
    wire C1, C2, C3, C4, C5;
    reg A, B;
    
    HW1_delay M(C1, C2, C3, C4, C5, A, B);
    
    initial begin
    $dumpfile("t_HW1_delay.vcd");
        $dumpvars;
    A = 1'b1; B = 1'b0;
    #4 B = 1'b1;
    #6 B = 1'b0;
    #5 B = 1'b1;
    #5 B = 1'b0;
    #10 B = 1'b1;
    #10 B = 1'b0;
    end
    initial #50 $finish;
endmodule
