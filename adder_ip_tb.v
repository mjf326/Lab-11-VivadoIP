`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2026 11:06:19 AM
// Design Name: 
// Module Name: adder_ip_tb
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


module adder_ip_tb;

reg [7:0] A, B;
wire [8:0] S;

design_adder_ip dut (.A_0(A), .B_0(B), .S_0(S));

initial begin
$dumpfile ("adder_ip_tb.vcd");
$dumpvars (0, adder_ip_tb);

end

initial begin
A=0; B=0;
#10;
A=8'd5; B=8'd7;
#10;
A= 8'd10; B=8'd10; 
#10;
A=8'd25; B= 8'd23;
#10;
A=8'd255; B= 8'd255;
#10;
A = 8'd0;   B = 8'd0;   #10; // 1. Min boundary (0 + 0)
A = 8'd0;   B = 8'd255; #10; // 2. Zero + Max 8-bit value
A = 8'd255; B = 8'd1;   #10; // 3. Max + 1 (Triggers carry-out bit S[8])
A = 8'd255; B = 8'd255; #10; // 4. Max + Max (Absolute maximum sum = 510)
A = 8'd128; B = 8'd128; #10; // 5. Power of two boundary (128 + 128)
A = 8'd170; B = 8'd85;  #10; // 6. Alternating bit pattern (10101010 + 01010101)

repeat(10)begin
A= $urandom_range(0,255);
B= $urandom_range (0,255);
#10;
end
#50 $finish;
end

initial $monitor("t=%0t ns A=%0d B=%0d S=%0d", $time, A, B, S);
endmodule
