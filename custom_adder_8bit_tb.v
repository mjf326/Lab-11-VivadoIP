`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2026 01:51:57 PM
// Design Name: 
// Module Name: custom_adder_8bit_tb
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


`timescale 1ns / 1ps

module custom_adder_8bit_tb;
    reg  [7:0] A, B;
    wire [8:0] SUM;

    design_1_wrapper uut (
        .A_0(A),
        .B_0(B),
        .SUM_0(SUM)
    );

    initial begin
        A = 8'd0;   B = 8'd0;   #10;
        A = 8'd1;   B = 8'd2;   #10;
        A = 8'd5;   B = 8'd4;   #10;
        A = 8'd15;  B = 8'd10;  #10;
        A = 8'd50;  B = 8'd75;  #10;
        A = 8'd100; B = 8'd28;  #10;
        A = 8'd128; B = 8'd128; #10;
        A = 8'd255; B = 8'd0;   #10;
        A = 8'd255; B = 8'd1;   #10;
        A = 8'd255; B = 8'd255; #10;
        $finish;
    end
endmodule
