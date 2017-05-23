--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: top_synthesis.vhd
-- /___/   /\     Timestamp: Sat Feb 25 15:44:48 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm top -w -dir netgen/synthesis -ofmt vhdl -sim top.ngc top_synthesis.vhd 
-- Device	: xc6slx9-3-tqg144
-- Input file	: top.ngc
-- Output file	: A:\ise\newPro\netgen\synthesis\top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: top
-- Xilinx	: B:\programfolder\ise\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity top is
  port (
    i_clk : in STD_LOGIC := 'X'; 
    i_DIPData : in STD_LOGIC := 'X'; 
    i_Eth_INT : in STD_LOGIC := 'X'; 
    i_SW1 : in STD_LOGIC := 'X'; 
    i_SW2 : in STD_LOGIC := 'X'; 
    i_SW3 : in STD_LOGIC := 'X'; 
    i_SW4 : in STD_LOGIC := 'X'; 
    i_RXD1 : in STD_LOGIC := 'X'; 
    i_RXD2 : in STD_LOGIC := 'X'; 
    i_MMC_DO : in STD_LOGIC := 'X'; 
    i_SYS_RESET : in STD_LOGIC := 'X'; 
    o_PSCLK : out STD_LOGIC; 
    o_LEDData : out STD_LOGIC; 
    o_LEDLatch : out STD_LOGIC; 
    o_DIPLatch : out STD_LOGIC; 
    o_SEGData : out STD_LOGIC; 
    o_SEGLatch : out STD_LOGIC; 
    o_LCDData : out STD_LOGIC; 
    o_LCDLatch : out STD_LOGIC; 
    o_Eth_RST : out STD_LOGIC; 
    o_Eth_CS : out STD_LOGIC; 
    o_Eth_RD : out STD_LOGIC; 
    o_Eth_WR : out STD_LOGIC; 
    o_USB_SLOE : out STD_LOGIC; 
    io_USB_IFCLK : inout STD_LOGIC; 
    o_USB_SLRD : out STD_LOGIC; 
    o_USB_SLWR : out STD_LOGIC; 
    o_VGA_blue0 : out STD_LOGIC; 
    o_VGA_blue1 : out STD_LOGIC; 
    o_VGA_green0 : out STD_LOGIC; 
    o_VGA_green1 : out STD_LOGIC; 
    o_VGA_red0 : out STD_LOGIC; 
    o_VGA_red1 : out STD_LOGIC; 
    o_VGA_vsync : out STD_LOGIC; 
    o_VGA_hsync : out STD_LOGIC; 
    o_TXD1 : out STD_LOGIC; 
    o_TXD2 : out STD_LOGIC; 
    o_MMC_SCK : out STD_LOGIC; 
    o_MMC_DI : out STD_LOGIC; 
    o_MMC_CS : out STD_LOGIC; 
    io_Data : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    io_MuxEthUSB : inout STD_LOGIC_VECTOR ( 9 downto 0 ) 
  );
end top;

architecture Structure of top is
  signal clk_5 : STD_LOGIC; 
  signal led_dr_latch_2 : STD_LOGIC; 
  signal led_dr_out_data_3 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N1_inv : STD_LOGIC; 
  signal CLKGEN_clkfbout_buf : STD_LOGIC; 
  signal CLKGEN_clkout3 : STD_LOGIC; 
  signal CLKGEN_clkout2 : STD_LOGIC; 
  signal CLKGEN_clkout1 : STD_LOGIC; 
  signal CLKGEN_clkout0 : STD_LOGIC; 
  signal CLKGEN_clkfbout : STD_LOGIC; 
  signal CLKGEN_clkin1 : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_0_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_1_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_2_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_3_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_4_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_5_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_6_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_7_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_8_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_9_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_10_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_11_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_12_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_13_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_14_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_15_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_16_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_17_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_18_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_19_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_20_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_21_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_22_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_23_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_24_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_25_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_26_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_27_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_28_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_29_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_30_Q : STD_LOGIC; 
  signal led_dr_counter_31_GND_62_o_add_2_OUT_31_Q : STD_LOGIC; 
  signal led_dr_Mram_counter_3_INPUTREV_15_Mux_1_o : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_lut_0_Q : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_0_Q_83 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_Q_84 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_Q_85 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_Q_86 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_Q_87 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_Q_88 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_Q_89 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_Q_90 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_Q_91 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_Q_92 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_Q_93 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_Q_94 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_Q_95 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_Q_96 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_Q_97 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_Q_98 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_Q_99 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_Q_100 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_Q_101 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_Q_102 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_Q_103 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_Q_104 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_Q_105 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_Q_106 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_Q_107 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_Q_108 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_Q_109 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_Q_110 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_Q_111 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_Q_112 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_Q_113 : STD_LOGIC; 
  signal led_dr_GND_62_o_counter_31_equal_4_o_31_Q : STD_LOGIC; 
  signal led_dr_GND_62_o_counter_31_equal_4_o_31_2 : STD_LOGIC; 
  signal led_dr_GND_62_o_counter_31_equal_4_o_31_3_121 : STD_LOGIC; 
  signal led_dr_GND_62_o_counter_31_equal_4_o_31_4_122 : STD_LOGIC; 
  signal led_dr_GND_62_o_counter_31_equal_4_o_31_5_123 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_rt_126 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_rt_127 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_rt_128 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_rt_129 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_rt_130 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_rt_131 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_rt_132 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_rt_133 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_rt_134 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_rt_135 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_rt_136 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_rt_137 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_rt_138 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_rt_139 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_rt_140 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_rt_141 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_rt_142 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_rt_143 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_rt_144 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_rt_145 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_rt_146 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_rt_147 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_rt_148 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_rt_149 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_rt_150 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_rt_151 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_rt_152 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_rt_153 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_rt_154 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_rt_155 : STD_LOGIC; 
  signal led_dr_Mcount_counter_cy_1_rt_156 : STD_LOGIC; 
  signal led_dr_Mcount_counter_cy_2_rt_157 : STD_LOGIC; 
  signal led_dr_Mcount_counter_cy_3_rt_158 : STD_LOGIC; 
  signal led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_31_rt_159 : STD_LOGIC; 
  signal led_dr_Mcount_counter_xor_4_rt_160 : STD_LOGIC; 
  signal led_dr_latch_rstpot : STD_LOGIC; 
  signal led_dr_counter_0_rstpot_162 : STD_LOGIC; 
  signal led_dr_counter_1_rstpot_163 : STD_LOGIC; 
  signal led_dr_counter_2_rstpot_164 : STD_LOGIC; 
  signal led_dr_counter_3_rstpot_165 : STD_LOGIC; 
  signal led_dr_counter_4_rstpot_166 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal led_dr_counter_4_1_170 : STD_LOGIC; 
  signal NLW_CLKGEN_clkout4_buf_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_clkout3_buf_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_clkout2_buf_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_pll_base_inst_CLKOUT4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_pll_base_inst_CLKOUT5_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_pll_base_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal led_dr_counter : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal led_dr_Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal led_dr_Mcount_counter_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N1_inv
    );
  XST_GND : GND
    port map (
      G => N1
    );
  led_dr_out_data : FD
    port map (
      C => clk_5,
      D => led_dr_Mram_counter_3_INPUTREV_15_Mux_1_o,
      Q => led_dr_out_data_3
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N1_inv,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_lut_0_Q,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_0_Q_83
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_lut_0_Q,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_0_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_0_Q_83,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_rt_126,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_Q_84
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_1_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_0_Q_83,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_rt_126,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_1_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_Q_84,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_rt_127,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_Q_85
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_2_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_Q_84,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_rt_127,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_2_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_Q_85,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_rt_128,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_Q_86
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_3_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_Q_85,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_rt_128,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_3_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_Q_86,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_rt_129,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_Q_87
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_4_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_Q_86,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_rt_129,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_4_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_Q_87,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_rt_130,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_Q_88
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_5_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_Q_87,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_rt_130,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_5_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_Q_88,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_rt_131,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_Q_89
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_6_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_Q_88,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_rt_131,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_6_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_Q_89,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_rt_132,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_Q_90
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_7_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_Q_89,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_rt_132,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_7_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_Q_90,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_rt_133,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_Q_91
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_8_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_Q_90,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_rt_133,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_8_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_Q_91,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_rt_134,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_Q_92
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_9_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_Q_91,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_rt_134,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_9_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_Q_92,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_rt_135,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_Q_93
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_10_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_Q_92,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_rt_135,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_10_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_Q_93,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_rt_136,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_Q_94
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_11_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_Q_93,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_rt_136,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_11_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_Q_94,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_rt_137,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_Q_95
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_12_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_Q_94,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_rt_137,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_12_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_Q_95,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_rt_138,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_Q_96
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_13_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_Q_95,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_rt_138,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_13_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_Q_96,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_rt_139,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_Q_97
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_14_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_Q_96,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_rt_139,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_14_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_Q_97,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_rt_140,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_Q_98
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_15_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_Q_97,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_rt_140,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_15_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_Q_98,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_rt_141,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_Q_99
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_16_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_Q_98,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_rt_141,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_16_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_Q_99,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_rt_142,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_Q_100
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_17_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_Q_99,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_rt_142,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_17_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_Q_100,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_rt_143,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_Q_101
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_18_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_Q_100,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_rt_143,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_18_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_Q_101,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_rt_144,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_Q_102
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_19_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_Q_101,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_rt_144,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_19_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_Q_102,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_rt_145,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_Q_103
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_20_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_Q_102,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_rt_145,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_20_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_Q_103,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_rt_146,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_Q_104
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_21_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_Q_103,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_rt_146,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_21_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_Q_104,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_rt_147,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_Q_105
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_22_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_Q_104,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_rt_147,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_22_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_Q_105,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_rt_148,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_Q_106
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_23_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_Q_105,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_rt_148,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_23_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_Q_106,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_rt_149,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_Q_107
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_24_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_Q_106,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_rt_149,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_24_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_Q_107,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_rt_150,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_Q_108
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_25_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_Q_107,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_rt_150,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_25_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_Q_108,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_rt_151,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_Q_109
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_26_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_Q_108,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_rt_151,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_26_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_Q_109,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_rt_152,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_Q_110
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_27_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_Q_109,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_rt_152,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_27_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_Q_110,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_rt_153,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_Q_111
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_28_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_Q_110,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_rt_153,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_28_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_Q_111,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_rt_154,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_Q_112
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_29_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_Q_111,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_rt_154,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_29_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_Q : MUXCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_Q_112,
      DI => N1,
      S => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_rt_155,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_Q_113
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_30_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_Q_112,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_rt_155,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_30_Q
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_31_Q : XORCY
    port map (
      CI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_Q_113,
      LI => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_31_rt_159,
      O => led_dr_counter_31_GND_62_o_add_2_OUT_31_Q
    );
  led_dr_Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N1_inv,
      S => led_dr_Mcount_counter_lut(0),
      O => led_dr_Mcount_counter_cy(0)
    );
  led_dr_Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => led_dr_Mcount_counter_lut(0),
      O => Result(0)
    );
  led_dr_Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => led_dr_Mcount_counter_cy(0),
      DI => N1,
      S => led_dr_Mcount_counter_cy_1_rt_156,
      O => led_dr_Mcount_counter_cy(1)
    );
  led_dr_Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => led_dr_Mcount_counter_cy(0),
      LI => led_dr_Mcount_counter_cy_1_rt_156,
      O => Result(1)
    );
  led_dr_Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => led_dr_Mcount_counter_cy(1),
      DI => N1,
      S => led_dr_Mcount_counter_cy_2_rt_157,
      O => led_dr_Mcount_counter_cy(2)
    );
  led_dr_Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => led_dr_Mcount_counter_cy(1),
      LI => led_dr_Mcount_counter_cy_2_rt_157,
      O => Result(2)
    );
  led_dr_Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => led_dr_Mcount_counter_cy(2),
      DI => N1,
      S => led_dr_Mcount_counter_cy_3_rt_158,
      O => led_dr_Mcount_counter_cy(3)
    );
  led_dr_Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => led_dr_Mcount_counter_cy(2),
      LI => led_dr_Mcount_counter_cy_3_rt_158,
      O => Result(3)
    );
  led_dr_Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => led_dr_Mcount_counter_cy(3),
      LI => led_dr_Mcount_counter_xor_4_rt_160,
      O => Result(4)
    );
  CLKGEN_clkout4_buf : BUFG
    port map (
      O => NLW_CLKGEN_clkout4_buf_O_UNCONNECTED,
      I => CLKGEN_clkout3
    );
  CLKGEN_clkout3_buf : BUFG
    port map (
      O => NLW_CLKGEN_clkout3_buf_O_UNCONNECTED,
      I => CLKGEN_clkout2
    );
  CLKGEN_clkout2_buf : BUFG
    port map (
      O => NLW_CLKGEN_clkout2_buf_O_UNCONNECTED,
      I => CLKGEN_clkout1
    );
  CLKGEN_clkout1_buf : BUFG
    port map (
      O => clk_5,
      I => CLKGEN_clkout0
    );
  CLKGEN_clkf_buf : BUFG
    port map (
      O => CLKGEN_clkfbout_buf,
      I => CLKGEN_clkfbout
    );
  CLKGEN_clkin1_buf : IBUFG
    generic map(
      CAPACITANCE => "DONT_CARE",
      IBUF_DELAY_VALUE => "0",
      IBUF_LOW_PWR => TRUE,
      IOSTANDARD => "DEFAULT"
    )
    port map (
      I => i_clk,
      O => CLKGEN_clkin1
    );
  led_dr_Mram_counter_3_INPUTREV_15_Mux_1_o11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => led_dr_counter(0),
      I1 => led_dr_counter(1),
      I2 => led_dr_counter(3),
      O => led_dr_Mram_counter_3_INPUTREV_15_Mux_1_o
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_1 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_0_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_1_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_2_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_3_Q,
      I4 => led_dr_counter_31_GND_62_o_add_2_OUT_4_Q,
      I5 => led_dr_counter_31_GND_62_o_add_2_OUT_5_Q,
      O => led_dr_GND_62_o_counter_31_equal_4_o_31_Q
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_3 : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_25_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_24_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_26_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_27_Q,
      I4 => led_dr_counter_31_GND_62_o_add_2_OUT_28_Q,
      O => led_dr_GND_62_o_counter_31_equal_4_o_31_2
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_18_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_17_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_19_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_20_Q,
      I4 => led_dr_counter_31_GND_62_o_add_2_OUT_21_Q,
      I5 => led_dr_counter_31_GND_62_o_add_2_OUT_22_Q,
      O => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_5 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_30_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_29_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_31_Q,
      O => led_dr_GND_62_o_counter_31_equal_4_o_31_4_122
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_6 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_7_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_6_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_8_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_9_Q,
      I4 => led_dr_counter_31_GND_62_o_add_2_OUT_10_Q,
      I5 => led_dr_counter_31_GND_62_o_add_2_OUT_11_Q,
      O => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123
    );
  o_PSCLK_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_PSCLK
    );
  o_LEDData_OBUF : OBUF
    port map (
      I => led_dr_out_data_3,
      O => o_LEDData
    );
  o_LEDLatch_OBUF : OBUF
    port map (
      I => led_dr_latch_2,
      O => o_LEDLatch
    );
  o_DIPLatch_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_DIPLatch
    );
  o_SEGData_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_SEGData
    );
  o_SEGLatch_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_SEGLatch
    );
  o_LCDData_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_LCDData
    );
  o_LCDLatch_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_LCDLatch
    );
  o_Eth_RST_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_Eth_RST
    );
  o_Eth_CS_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_Eth_CS
    );
  o_Eth_RD_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_Eth_RD
    );
  o_Eth_WR_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_Eth_WR
    );
  o_USB_SLOE_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_USB_SLOE
    );
  o_USB_SLRD_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_USB_SLRD
    );
  o_USB_SLWR_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_USB_SLWR
    );
  o_VGA_blue0_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_blue0
    );
  o_VGA_blue1_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_blue1
    );
  o_VGA_green0_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_green0
    );
  o_VGA_green1_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_green1
    );
  o_VGA_red0_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_red0
    );
  o_VGA_red1_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_red1
    );
  o_VGA_vsync_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_vsync
    );
  o_VGA_hsync_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_VGA_hsync
    );
  o_TXD1_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_TXD1
    );
  o_TXD2_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_TXD2
    );
  o_MMC_SCK_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_MMC_SCK
    );
  o_MMC_DI_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_MMC_DI
    );
  o_MMC_CS_OBUFT : OBUFT
    port map (
      I => N1,
      T => N1_inv,
      O => o_MMC_CS
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(1),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_1_rt_126
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(2),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_2_rt_127
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(3),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_3_rt_128
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_4_rt_129
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_5_rt_130
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_6_rt_131
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_7_rt_132
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_8_rt_133
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_9_rt_134
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_10_rt_135
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_11_rt_136
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_12_rt_137
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_13_rt_138
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_14_rt_139
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_15_rt_140
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter_4_1_170,
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_16_rt_141
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_17_rt_142
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_18_rt_143
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_19_rt_144
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_20_rt_145
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_21_rt_146
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_22_rt_147
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_23_rt_148
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_24_rt_149
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_25_rt_150
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_26_rt_151
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_27_rt_152
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_28_rt_153
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_29_rt_154
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_cy_30_rt_155
    );
  led_dr_Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(1),
      O => led_dr_Mcount_counter_cy_1_rt_156
    );
  led_dr_Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(2),
      O => led_dr_Mcount_counter_cy_2_rt_157
    );
  led_dr_Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(3),
      O => led_dr_Mcount_counter_cy_3_rt_158
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_xor_31_rt_159
    );
  led_dr_Mcount_counter_xor_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => led_dr_counter(4),
      O => led_dr_Mcount_counter_xor_4_rt_160
    );
  led_dr_latch : FD
    port map (
      C => clk_5,
      D => led_dr_latch_rstpot,
      Q => led_dr_latch_2
    );
  led_dr_counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_5,
      D => led_dr_counter_0_rstpot_162,
      Q => led_dr_counter(0)
    );
  led_dr_counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_5,
      D => led_dr_counter_1_rstpot_163,
      Q => led_dr_counter(1)
    );
  led_dr_counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_5,
      D => led_dr_counter_2_rstpot_164,
      Q => led_dr_counter(2)
    );
  led_dr_counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_5,
      D => led_dr_counter_3_rstpot_165,
      Q => led_dr_counter(3)
    );
  led_dr_counter_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_5,
      D => led_dr_counter_4_rstpot_166,
      Q => led_dr_counter(4)
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_2_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_12_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_13_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_14_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_15_Q,
      I4 => led_dr_counter_31_GND_62_o_add_2_OUT_16_Q,
      I5 => led_dr_counter_31_GND_62_o_add_2_OUT_23_Q,
      O => N4
    );
  led_dr_latch_rstpot1 : LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
    port map (
      I0 => led_dr_GND_62_o_counter_31_equal_4_o_31_Q,
      I1 => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123,
      I2 => N4,
      I3 => led_dr_GND_62_o_counter_31_equal_4_o_31_4_122,
      I4 => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121,
      I5 => led_dr_GND_62_o_counter_31_equal_4_o_31_2,
      O => led_dr_latch_rstpot
    );
  led_dr_counter_0_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => Result(0),
      I1 => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123,
      I2 => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121,
      I3 => N4,
      I4 => led_dr_GND_62_o_counter_31_equal_4_o_31_2,
      I5 => N16,
      O => led_dr_counter_0_rstpot_162
    );
  led_dr_counter_1_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => Result(1),
      I1 => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123,
      I2 => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121,
      I3 => N4,
      I4 => led_dr_GND_62_o_counter_31_equal_4_o_31_2,
      I5 => N16,
      O => led_dr_counter_1_rstpot_163
    );
  led_dr_counter_2_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => Result(2),
      I1 => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123,
      I2 => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121,
      I3 => N4,
      I4 => led_dr_GND_62_o_counter_31_equal_4_o_31_2,
      I5 => N16,
      O => led_dr_counter_2_rstpot_164
    );
  led_dr_counter_3_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => Result(3),
      I1 => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123,
      I2 => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121,
      I3 => N4,
      I4 => led_dr_GND_62_o_counter_31_equal_4_o_31_2,
      I5 => N16,
      O => led_dr_counter_3_rstpot_165
    );
  led_dr_counter_4_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAA2AAAAA"
    )
    port map (
      I0 => Result(4),
      I1 => led_dr_GND_62_o_counter_31_equal_4_o_31_5_123,
      I2 => led_dr_GND_62_o_counter_31_equal_4_o_31_3_121,
      I3 => N4,
      I4 => led_dr_GND_62_o_counter_31_equal_4_o_31_2,
      I5 => N16,
      O => led_dr_counter_4_rstpot_166
    );
  led_dr_GND_62_o_counter_31_equal_4_o_31_1_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_0_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_1_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_2_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_3_Q,
      O => N26
    );
  led_dr_counter_0_rstpot_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
    port map (
      I0 => led_dr_counter_31_GND_62_o_add_2_OUT_4_Q,
      I1 => led_dr_counter_31_GND_62_o_add_2_OUT_5_Q,
      I2 => led_dr_counter_31_GND_62_o_add_2_OUT_29_Q,
      I3 => led_dr_counter_31_GND_62_o_add_2_OUT_30_Q,
      I4 => led_dr_counter_31_GND_62_o_add_2_OUT_31_Q,
      I5 => N26,
      O => N16
    );
  led_dr_counter_4_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_5,
      D => led_dr_counter_4_rstpot_166,
      Q => led_dr_counter_4_1_170
    );
  led_dr_Madd_counter_31_GND_62_o_add_2_OUT_lut_0_INV_0 : INV
    port map (
      I => led_dr_counter(0),
      O => led_dr_Madd_counter_31_GND_62_o_add_2_OUT_lut_0_Q
    );
  led_dr_Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => led_dr_counter(0),
      O => led_dr_Mcount_counter_lut(0)
    );
  CLKGEN_pll_base_inst : PLL_BASE
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 8,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN_PERIOD => 20.000000,
      CLKOUT0_DIVIDE => 80,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 20,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 8,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 4,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLK_FEEDBACK => "CLKFBOUT",
      COMPENSATION => "SYSTEM_SYNCHRONOUS",
      DIVCLK_DIVIDE => 1,
      REF_JITTER => 0.010000,
      RESET_ON_LOSS_OF_LOCK => FALSE
    )
    port map (
      CLKIN => CLKGEN_clkin1,
      CLKOUT3 => CLKGEN_clkout3,
      CLKFBIN => CLKGEN_clkfbout_buf,
      CLKOUT1 => CLKGEN_clkout1,
      CLKOUT0 => CLKGEN_clkout0,
      CLKFBOUT => CLKGEN_clkfbout,
      CLKOUT2 => CLKGEN_clkout2,
      RST => N1,
      CLKOUT4 => NLW_CLKGEN_pll_base_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_CLKGEN_pll_base_inst_CLKOUT5_UNCONNECTED,
      LOCKED => NLW_CLKGEN_pll_base_inst_LOCKED_UNCONNECTED
    );

end Structure;

