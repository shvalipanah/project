////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: TopModule_synthesis.v
// /___/   /\     Timestamp: Mon Feb 27 16:35:47 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim TopModule.ngc TopModule_synthesis.v 
// Device	: xc6slx9-3-tqg144
// Input file	: TopModule.ngc
// Output file	: A:\ise\switch\netgen\synthesis\TopModule_synthesis.v
// # of Modules	: 1
// Design Name	: TopModule
// Xilinx        : B:\programfolder\ise\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module TopModule (
  i_CLK, i_DIPData, i_Eth_INT, i_SW1, i_SW2, i_SW3, i_SW4, i_RXD1, i_RXD2, i_MMC_DO, i_SYS_RESET, o_PSCLK, o_LEDData, o_LEDLatch, o_DIPLatch, 
o_SEGData, o_SEGLatch, o_LCDData, o_LCDLatch, o_Eth_RST, o_Eth_CS, o_Eth_RD, o_Eth_WR, o_USB_SLOE, io_USB_IFCLK, o_USB_SLRD, o_USB_SLWR, o_VGA_blue0, 
o_VGA_blue1, o_VGA_green0, o_VGA_green1, o_VGA_red0, o_VGA_red1, o_VGA_vsync, o_VGA_hsync, o_TXD1, o_TXD2, o_MMC_SCK, o_MMC_DI, o_MMC_CS, io_Data, 
io_MuxEthUSB
);
  input i_CLK;
  input i_DIPData;
  input i_Eth_INT;
  input i_SW1;
  input i_SW2;
  input i_SW3;
  input i_SW4;
  input i_RXD1;
  input i_RXD2;
  input i_MMC_DO;
  input i_SYS_RESET;
  output o_PSCLK;
  output o_LEDData;
  output o_LEDLatch;
  output o_DIPLatch;
  output o_SEGData;
  output o_SEGLatch;
  output o_LCDData;
  output o_LCDLatch;
  output o_Eth_RST;
  output o_Eth_CS;
  output o_Eth_RD;
  output o_Eth_WR;
  output o_USB_SLOE;
  inout io_USB_IFCLK;
  output o_USB_SLRD;
  output o_USB_SLWR;
  output o_VGA_blue0;
  output o_VGA_blue1;
  output o_VGA_green0;
  output o_VGA_green1;
  output o_VGA_red0;
  output o_VGA_red1;
  output o_VGA_vsync;
  output o_VGA_hsync;
  output o_TXD1;
  output o_TXD2;
  output o_MMC_SCK;
  output o_MMC_DI;
  output o_MMC_CS;
  inout [7 : 0] io_Data;
  inout [9 : 0] io_MuxEthUSB;
  wire o_PSCLK_OBUF_1;
  wire \sDriver/latch_2 ;
  wire N1;
  wire N1_inv;
  wire \CLKGEN/clkfbout_buf ;
  wire \CLKGEN/clkout3 ;
  wire \CLKGEN/clkout2 ;
  wire \CLKGEN/clkout1 ;
  wire \CLKGEN/clkout0 ;
  wire \CLKGEN/clkfbout ;
  wire \CLKGEN/clkin1 ;
  wire \sDriver/counter_3_rstpot_45 ;
  wire \sDriver/counter_2_rstpot_46 ;
  wire \sDriver/counter_1_rstpot_47 ;
  wire \sDriver/counter_0_rstpot_48 ;
  wire \sDriver/counter_4_rstpot_49 ;
  wire \sDriver/latch_rstpot ;
  wire \NLW_CLKGEN/clkout4_buf_O_UNCONNECTED ;
  wire \NLW_CLKGEN/clkout3_buf_O_UNCONNECTED ;
  wire \NLW_CLKGEN/clkout2_buf_O_UNCONNECTED ;
  wire \NLW_CLKGEN/pll_base_inst_CLKOUT4_UNCONNECTED ;
  wire \NLW_CLKGEN/pll_base_inst_CLKOUT5_UNCONNECTED ;
  wire \NLW_CLKGEN/pll_base_inst_LOCKED_UNCONNECTED ;
  wire [4 : 0] \sDriver/counter ;
  VCC   XST_VCC (
    .P(N1_inv)
  );
  GND   XST_GND (
    .G(N1)
  );
  BUFG   \CLKGEN/clkout4_buf  (
    .O(\NLW_CLKGEN/clkout4_buf_O_UNCONNECTED ),
    .I(\CLKGEN/clkout3 )
  );
  BUFG   \CLKGEN/clkout3_buf  (
    .O(\NLW_CLKGEN/clkout3_buf_O_UNCONNECTED ),
    .I(\CLKGEN/clkout2 )
  );
  BUFG   \CLKGEN/clkout2_buf  (
    .O(\NLW_CLKGEN/clkout2_buf_O_UNCONNECTED ),
    .I(\CLKGEN/clkout1 )
  );
  BUFG   \CLKGEN/clkout1_buf  (
    .O(o_PSCLK_OBUF_1),
    .I(\CLKGEN/clkout0 )
  );
  BUFG   \CLKGEN/clkf_buf  (
    .O(\CLKGEN/clkfbout_buf ),
    .I(\CLKGEN/clkfbout )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \CLKGEN/clkin1_buf  (
    .I(i_CLK),
    .O(\CLKGEN/clkin1 )
  );
  OBUF   o_PSCLK_OBUF (
    .I(o_PSCLK_OBUF_1),
    .O(o_PSCLK)
  );
  OBUFT   o_LEDData_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_LEDData)
  );
  OBUFT   o_LEDLatch_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_LEDLatch)
  );
  OBUF   o_DIPLatch_OBUF (
    .I(\sDriver/latch_2 ),
    .O(o_DIPLatch)
  );
  OBUFT   o_SEGData_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_SEGData)
  );
  OBUFT   o_SEGLatch_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_SEGLatch)
  );
  OBUFT   o_LCDData_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_LCDData)
  );
  OBUFT   o_LCDLatch_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_LCDLatch)
  );
  OBUFT   o_Eth_RST_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_RST)
  );
  OBUFT   o_Eth_CS_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_CS)
  );
  OBUFT   o_Eth_RD_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_RD)
  );
  OBUFT   o_Eth_WR_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_Eth_WR)
  );
  OBUFT   o_USB_SLOE_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_USB_SLOE)
  );
  OBUFT   o_USB_SLRD_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_USB_SLRD)
  );
  OBUFT   o_USB_SLWR_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_USB_SLWR)
  );
  OBUFT   o_VGA_blue0_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_blue0)
  );
  OBUFT   o_VGA_blue1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_blue1)
  );
  OBUFT   o_VGA_green0_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_green0)
  );
  OBUFT   o_VGA_green1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_green1)
  );
  OBUFT   o_VGA_red0_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_red0)
  );
  OBUFT   o_VGA_red1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_red1)
  );
  OBUFT   o_VGA_vsync_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_vsync)
  );
  OBUFT   o_VGA_hsync_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_VGA_hsync)
  );
  OBUFT   o_TXD1_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_TXD1)
  );
  OBUFT   o_TXD2_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_TXD2)
  );
  OBUFT   o_MMC_SCK_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_MMC_SCK)
  );
  OBUFT   o_MMC_DI_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_MMC_DI)
  );
  OBUFT   o_MMC_CS_OBUFT (
    .I(N1),
    .T(N1_inv),
    .O(o_MMC_CS)
  );
  FD #(
    .INIT ( 1'b0 ))
  \sDriver/counter_3  (
    .C(o_PSCLK_OBUF_1),
    .D(\sDriver/counter_3_rstpot_45 ),
    .Q(\sDriver/counter [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \sDriver/counter_2  (
    .C(o_PSCLK_OBUF_1),
    .D(\sDriver/counter_2_rstpot_46 ),
    .Q(\sDriver/counter [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \sDriver/counter_1  (
    .C(o_PSCLK_OBUF_1),
    .D(\sDriver/counter_1_rstpot_47 ),
    .Q(\sDriver/counter [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \sDriver/counter_0  (
    .C(o_PSCLK_OBUF_1),
    .D(\sDriver/counter_0_rstpot_48 ),
    .Q(\sDriver/counter [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \sDriver/counter_4  (
    .C(o_PSCLK_OBUF_1),
    .D(\sDriver/counter_4_rstpot_49 ),
    .Q(\sDriver/counter [4])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \sDriver/counter_3_rstpot  (
    .I0(\sDriver/counter [3]),
    .I1(\sDriver/counter [2]),
    .I2(\sDriver/counter [1]),
    .I3(\sDriver/counter [0]),
    .O(\sDriver/counter_3_rstpot_45 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \sDriver/counter_2_rstpot  (
    .I0(\sDriver/counter [2]),
    .I1(\sDriver/counter [1]),
    .I2(\sDriver/counter [0]),
    .O(\sDriver/counter_2_rstpot_46 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \sDriver/counter_1_rstpot  (
    .I0(\sDriver/counter [1]),
    .I1(\sDriver/counter [0]),
    .O(\sDriver/counter_1_rstpot_47 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \sDriver/counter_4_rstpot  (
    .I0(\sDriver/counter [4]),
    .I1(\sDriver/counter [3]),
    .I2(\sDriver/counter [2]),
    .I3(\sDriver/counter [1]),
    .I4(\sDriver/counter [0]),
    .O(\sDriver/counter_4_rstpot_49 )
  );
  LUT5 #(
    .INIT ( 32'h0000FFFD ))
  \sDriver/counter_0_rstpot  (
    .I0(\sDriver/counter [4]),
    .I1(\sDriver/counter [3]),
    .I2(\sDriver/counter [2]),
    .I3(\sDriver/counter [1]),
    .I4(\sDriver/counter [0]),
    .O(\sDriver/counter_0_rstpot_48 )
  );
  FD   \sDriver/latch  (
    .C(o_PSCLK_OBUF_1),
    .D(\sDriver/latch_rstpot ),
    .Q(\sDriver/latch_2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \sDriver/latch_rstpot1  (
    .I0(\sDriver/counter [4]),
    .I1(\sDriver/counter [3]),
    .I2(\sDriver/counter [2]),
    .I3(\sDriver/counter [1]),
    .I4(\sDriver/counter [0]),
    .O(\sDriver/latch_rstpot )
  );
  PLL_BASE #(
    .BANDWIDTH ( "OPTIMIZED" ),
    .CLK_FEEDBACK ( "CLKFBOUT" ),
    .COMPENSATION ( "SYSTEM_SYNCHRONOUS" ),
    .RESET_ON_LOSS_OF_LOCK ( "FALSE" ),
    .CLKFBOUT_MULT ( 8 ),
    .CLKOUT0_DIVIDE ( 80 ),
    .CLKOUT1_DIVIDE ( 20 ),
    .CLKOUT2_DIVIDE ( 8 ),
    .CLKOUT3_DIVIDE ( 4 ),
    .CLKOUT4_DIVIDE ( 1 ),
    .CLKOUT5_DIVIDE ( 1 ),
    .DIVCLK_DIVIDE ( 1 ),
    .CLKFBOUT_PHASE ( 0.000000 ),
    .CLKIN_PERIOD ( 20.000000 ),
    .CLKOUT0_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT0_PHASE ( 0.000000 ),
    .CLKOUT1_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT1_PHASE ( 0.000000 ),
    .CLKOUT2_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT2_PHASE ( 0.000000 ),
    .CLKOUT3_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT3_PHASE ( 0.000000 ),
    .CLKOUT4_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT4_PHASE ( 0.000000 ),
    .CLKOUT5_DUTY_CYCLE ( 0.500000 ),
    .CLKOUT5_PHASE ( 0.000000 ),
    .REF_JITTER ( 0.010000 ))
  \CLKGEN/pll_base_inst  (
    .CLKIN(\CLKGEN/clkin1 ),
    .CLKOUT3(\CLKGEN/clkout3 ),
    .CLKFBIN(\CLKGEN/clkfbout_buf ),
    .CLKOUT1(\CLKGEN/clkout1 ),
    .CLKOUT0(\CLKGEN/clkout0 ),
    .CLKFBOUT(\CLKGEN/clkfbout ),
    .CLKOUT2(\CLKGEN/clkout2 ),
    .RST(N1),
    .CLKOUT4(\NLW_CLKGEN/pll_base_inst_CLKOUT4_UNCONNECTED ),
    .CLKOUT5(\NLW_CLKGEN/pll_base_inst_CLKOUT5_UNCONNECTED ),
    .LOCKED(\NLW_CLKGEN/pll_base_inst_LOCKED_UNCONNECTED )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

