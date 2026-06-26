`timescale 1 ps / 1 ps

module top (
    // FrontPanel Host Interface (Matches .xdc exactly)
    input  wire [4:0]  okUH,
    output wire [2:0]  okHU,
    inout  wire [31:0] okUHU,
    inout  wire        okAA,

    // System Clock (Renamed to match .xdc)
    input  wire        sys_clk_n,
    input  wire        sys_clk_p,

    // LEDs (Renamed to match .xdc)
    output wire [7:0]  led,
    // output wire [0:0] led,
    // output wire [7:0] scrap,

    // DRAM Interface (Matches .xdc exactly)
    output wire [14:0] ddr3_addr,
    output wire [2:0]  ddr3_ba,
    output wire        ddr3_cas_n,
    output wire [0:0]  ddr3_ck_n,
    output wire [0:0]  ddr3_ck_p,
    output wire [0:0]  ddr3_cke,
    output wire [3:0]  ddr3_dm,
    inout  wire [31:0] ddr3_dq,
    inout  wire [3:0]  ddr3_dqs_n,
    inout  wire [3:0]  ddr3_dqs_p,
    output wire [0:0]  ddr3_odt,
    output wire        ddr3_ras_n,
    output wire        ddr3_reset_n,
    output wire        ddr3_we_n,

    //ext reset
    input wire         ext_reset_in_0
);

    //------------------------------------------------------------------------
    // Opal Kelly Host Interface & Endpoints
    //------------------------------------------------------------------------
    wire        okClk;
    wire [112:0] okHE;
    wire [64:0]  okEH;
    // assign okEH = 33'h0;
    
    okHost host (
        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okAA(okAA),
        .okClk(okClk),
        .okHE(okHE),
        .okEH(okEH)
    );

    wire [31:0] usb_in;
    wire [31:0] usb_out;

    okWireIn wireIn00 (
        .okHE(okHE),
        .ep_addr(8'h00), 
        .ep_dataout(usb_in)
    );

    okWireOut wireOut20 (
        .okHE(okHE),
        .okEH(okEH),
        .ep_addr(8'h20), 
        .ep_datain(usb_out)
    );

    //------------------------------------------------------------------------
    // Vivado Block Design Wrapper Instance
    //------------------------------------------------------------------------
    design_1_wrapper d1 (
        // Host-to-Target Data Path
        .GPIO_0_tri_i(usb_in),
        .GPIO2_0_tri_o(usb_out),
        
        // Target Hardware Control Path (Routed to renamed LED wire)
        .GPIO_1_tri_o(led),
        
        // Clocking (Routed to renamed system clock pins)
        .fixed_200mhz_clk_n(sys_clk_n),
        .fixed_200mhz_clk_p(sys_clk_p),

        // DDR3 Physical Ports
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
        .ext_reset_in_0(ext_reset_in_0)
    );

endmodule