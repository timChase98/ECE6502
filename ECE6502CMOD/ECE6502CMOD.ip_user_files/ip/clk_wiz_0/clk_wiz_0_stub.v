// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Jan 26 09:54:49 2022
// Host        : SENG-218-6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/tchase/Documents/ECE6502/ECE6502CMOD/ECE6502CMOD.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk100Mhz, clk25Mhz, clk8Mhz, reset, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk100Mhz,clk25Mhz,clk8Mhz,reset,locked,clk_in1" */;
  output clk100Mhz;
  output clk25Mhz;
  output clk8Mhz;
  input reset;
  output locked;
  input clk_in1;
endmodule