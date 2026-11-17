//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
//Date        : Tue Nov 17 11:03:54 2026
//Host        : MarinaPC running 64-bit major release  (build 9200)
//Command     : generate_target design_adder_ip_wrapper.bd
//Design      : design_adder_ip_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_adder_ip_wrapper
   (A_0,
    B_0,
    S_0);
  input [7:0]A_0;
  input [7:0]B_0;
  output [8:0]S_0;

  wire [7:0]A_0;
  wire [7:0]B_0;
  wire [8:0]S_0;

  design_adder_ip design_adder_ip_i
       (.A_0(A_0),
        .B_0(B_0),
        .S_0(S_0));
endmodule
