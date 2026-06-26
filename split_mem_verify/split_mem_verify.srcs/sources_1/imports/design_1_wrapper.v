//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed Jun 24 16:10:22 2026
//Host        : ug149 running 64-bit Debian GNU/Linux 12 (bookworm)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO2_0_tri_o,
    GPIO_0_tri_i,
    GPIO_1_tri_o,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    ext_reset_in_0,
    fixed_200mhz_clk_n,
    fixed_200mhz_clk_p);
  output [31:0]GPIO2_0_tri_o;
  input [31:0]GPIO_0_tri_i;
  output [7:0]GPIO_1_tri_o;
  output [14:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [3:0]ddr3_dm;
  inout [31:0]ddr3_dq;
  inout [3:0]ddr3_dqs_n;
  inout [3:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;
  input ext_reset_in_0;
  input fixed_200mhz_clk_n;
  input fixed_200mhz_clk_p;

  wire [31:0]GPIO2_0_tri_o;
  wire [31:0]GPIO_0_tri_i;
  wire [7:0]GPIO_1_tri_o;
  wire [14:0]ddr3_addr;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [3:0]ddr3_dm;
  wire [31:0]ddr3_dq;
  wire [3:0]ddr3_dqs_n;
  wire [3:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_reset_n;
  wire ddr3_we_n;
  wire ext_reset_in_0;
  wire fixed_200mhz_clk_n;
  wire fixed_200mhz_clk_p;

  design_1 design_1_i
       (.GPIO2_0_tri_o(GPIO2_0_tri_o),
        .GPIO_0_tri_i(GPIO_0_tri_i),
        .GPIO_1_tri_o(GPIO_1_tri_o),
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        .ext_reset_in_0(ext_reset_in_0),
        .fixed_200mhz_clk_n(fixed_200mhz_clk_n),
        .fixed_200mhz_clk_p(fixed_200mhz_clk_p));
endmodule
