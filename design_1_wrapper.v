//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
//Date        : Thu Nov 19 13:48:47 2026
//Host        : JMR-G14 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (A_0,
    B_0,
    SUM_0);
  input [7:0]A_0;
  input [7:0]B_0;
  output [8:0]SUM_0;

  wire [7:0]A_0;
  wire [7:0]B_0;
  wire [8:0]SUM_0;

  design_1 design_1_i
       (.A_0(A_0),
        .B_0(B_0),
        .SUM_0(SUM_0));
endmodule
