// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Mar 23 21:37:25 2023
// Host        : ayush-GF63-Thin-10SC running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ayush/Downloads/assignment_4daabc9537250d6e9d26129235265db2975c3cbe/q6/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_stub.v
// Design      : xbip_dsp48_macro_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *)
module xbip_dsp48_macro_0(CLK, SEL, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,SEL[1:0],A[24:0],B[17:0],P[47:0]" */;
  input CLK;
  input [1:0]SEL;
  input [24:0]A;
  input [17:0]B;
  output [47:0]P;
endmodule
