--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: TopModule_synthesis.vhd
-- /___/   /\     Timestamp: Sat Apr 15 06:12:52 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm TopModule -w -dir netgen/synthesis -ofmt vhdl -sim TopModule.ngc TopModule_synthesis.vhd 
-- Device	: xc6slx9-3-tqg144
-- Input file	: TopModule.ngc
-- Output file	: E:\proj1\netgen\synthesis\TopModule_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: TopModule
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
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

entity TopModule is
  port (
    i_CLK : in STD_LOGIC := 'X'; 
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
end TopModule;

architecture Structure of TopModule is
  signal CLK_out5 : STD_LOGIC; 
  signal s_driver_latch_2 : STD_LOGIC; 
  signal o_PSCLK_OBUF_3 : STD_LOGIC; 
  signal l_drive_latch_4 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N1_inv : STD_LOGIC; 
  signal CLKGEN_clkfbout_buf : STD_LOGIC; 
  signal CLKGEN_clkout3 : STD_LOGIC; 
  signal CLKGEN_clkout2 : STD_LOGIC; 
  signal CLKGEN_clkout1 : STD_LOGIC; 
  signal CLKGEN_clkout0 : STD_LOGIC; 
  signal CLKGEN_clkfbout : STD_LOGIC; 
  signal CLKGEN_clkin1 : STD_LOGIC; 
  signal s_driver_counter_0_rstpot : STD_LOGIC; 
  signal l_drive_counter_0_rstpot_53 : STD_LOGIC; 
  signal s_driver_latch_rstpot : STD_LOGIC; 
  signal l_drive_counter_3_rstpot_55 : STD_LOGIC; 
  signal l_drive_counter_2_rstpot_56 : STD_LOGIC; 
  signal l_drive_counter_1_rstpot_57 : STD_LOGIC; 
  signal l_drive_counter_4_rstpot_58 : STD_LOGIC; 
  signal s_driver_counter_2_rstpot_59 : STD_LOGIC; 
  signal s_driver_counter_1_rstpot_60 : STD_LOGIC; 
  signal s_driver_counter_3_rstpot_61 : STD_LOGIC; 
  signal s_driver_counter_4_rstpot_62 : STD_LOGIC; 
  signal l_drive_latch_rstpot_63 : STD_LOGIC; 
  signal NLW_CLKGEN_clkout4_buf_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_clkout3_buf_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_clkout2_buf_O_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_pll_base_inst_CLKOUT4_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_pll_base_inst_CLKOUT5_UNCONNECTED : STD_LOGIC; 
  signal NLW_CLKGEN_pll_base_inst_LOCKED_UNCONNECTED : STD_LOGIC; 
  signal s_driver_counter : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal l_drive_counter : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N1_inv
    );
  XST_GND : GND
    port map (
      G => N1
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
      O => CLK_out5,
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
      I => i_CLK,
      O => CLKGEN_clkin1
    );
  o_PSCLK_OBUF : OBUF
    port map (
      I => o_PSCLK_OBUF_3,
      O => o_PSCLK
    );
  o_LEDData_OBUF : OBUF
    port map (
      I => N1,
      O => o_LEDData
    );
  o_LEDLatch_OBUF : OBUF
    port map (
      I => l_drive_latch_4,
      O => o_LEDLatch
    );
  o_DIPLatch_OBUF : OBUF
    port map (
      I => s_driver_latch_2,
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
  s_driver_counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => s_driver_counter_0_rstpot,
      Q => s_driver_counter(0)
    );
  l_drive_counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => l_drive_counter_0_rstpot_53,
      Q => l_drive_counter(0)
    );
  s_driver_latch : FD
    port map (
      C => CLK_out5,
      D => s_driver_latch_rstpot,
      Q => s_driver_latch_2
    );
  l_drive_counter_0_rstpot : LUT5
    generic map(
      INIT => X"0000FFFD"
    )
    port map (
      I0 => l_drive_counter(4),
      I1 => l_drive_counter(3),
      I2 => l_drive_counter(2),
      I3 => l_drive_counter(1),
      I4 => l_drive_counter(0),
      O => l_drive_counter_0_rstpot_53
    );
  s_driver_latch_rstpot1 : LUT5
    generic map(
      INIT => X"FFF7FFFF"
    )
    port map (
      I0 => s_driver_counter(4),
      I1 => s_driver_counter(2),
      I2 => s_driver_counter(3),
      I3 => s_driver_counter(1),
      I4 => s_driver_counter(0),
      O => s_driver_latch_rstpot
    );
  l_drive_counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => l_drive_counter_3_rstpot_55,
      Q => l_drive_counter(3)
    );
  l_drive_counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => l_drive_counter_2_rstpot_56,
      Q => l_drive_counter(2)
    );
  l_drive_counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => l_drive_counter_1_rstpot_57,
      Q => l_drive_counter(1)
    );
  l_drive_counter_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => l_drive_counter_4_rstpot_58,
      Q => l_drive_counter(4)
    );
  s_driver_counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => s_driver_counter_2_rstpot_59,
      Q => s_driver_counter(2)
    );
  s_driver_counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => s_driver_counter_1_rstpot_60,
      Q => s_driver_counter(1)
    );
  s_driver_counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => s_driver_counter_3_rstpot_61,
      Q => s_driver_counter(3)
    );
  s_driver_counter_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_out5,
      D => s_driver_counter_4_rstpot_62,
      Q => s_driver_counter(4)
    );
  l_drive_latch : FD
    port map (
      C => CLK_out5,
      D => l_drive_latch_rstpot_63,
      Q => l_drive_latch_4
    );
  l_drive_latch_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA3"
    )
    port map (
      I0 => l_drive_latch_4,
      I1 => l_drive_counter(4),
      I2 => l_drive_counter(3),
      I3 => l_drive_counter(2),
      I4 => l_drive_counter(1),
      I5 => l_drive_counter(0),
      O => l_drive_latch_rstpot_63
    );
  l_drive_counter_3_rstpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => l_drive_counter(3),
      I1 => l_drive_counter(2),
      I2 => l_drive_counter(1),
      I3 => l_drive_counter(0),
      O => l_drive_counter_3_rstpot_55
    );
  l_drive_counter_2_rstpot : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => l_drive_counter(2),
      I1 => l_drive_counter(0),
      I2 => l_drive_counter(1),
      O => l_drive_counter_2_rstpot_56
    );
  l_drive_counter_1_rstpot : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => l_drive_counter(1),
      I1 => l_drive_counter(0),
      O => l_drive_counter_1_rstpot_57
    );
  l_drive_counter_4_rstpot : LUT5
    generic map(
      INIT => X"6AAAAAA8"
    )
    port map (
      I0 => l_drive_counter(4),
      I1 => l_drive_counter(3),
      I2 => l_drive_counter(2),
      I3 => l_drive_counter(1),
      I4 => l_drive_counter(0),
      O => l_drive_counter_4_rstpot_58
    );
  s_driver_counter_4_rstpot : LUT5
    generic map(
      INIT => X"6AA2AAAA"
    )
    port map (
      I0 => s_driver_counter(4),
      I1 => s_driver_counter(0),
      I2 => s_driver_counter(3),
      I3 => s_driver_counter(1),
      I4 => s_driver_counter(2),
      O => s_driver_counter_4_rstpot_62
    );
  s_driver_counter_3_rstpot : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => s_driver_counter(3),
      I1 => s_driver_counter(0),
      I2 => s_driver_counter(1),
      I3 => s_driver_counter(2),
      O => s_driver_counter_3_rstpot_61
    );
  s_driver_counter_2_rstpot : LUT5
    generic map(
      INIT => X"0DF0FF00"
    )
    port map (
      I0 => s_driver_counter(4),
      I1 => s_driver_counter(3),
      I2 => s_driver_counter(1),
      I3 => s_driver_counter(2),
      I4 => s_driver_counter(0),
      O => s_driver_counter_2_rstpot_59
    );
  s_driver_counter_1_rstpot : LUT5
    generic map(
      INIT => X"00F7FF00"
    )
    port map (
      I0 => s_driver_counter(4),
      I1 => s_driver_counter(2),
      I2 => s_driver_counter(3),
      I3 => s_driver_counter(1),
      I4 => s_driver_counter(0),
      O => s_driver_counter_1_rstpot_60
    );
  o_PSCLK1_INV_0 : INV
    port map (
      I => CLK_out5,
      O => o_PSCLK_OBUF_3
    );
  s_driver_counter_0_rstpot_INV_0 : INV
    port map (
      I => s_driver_counter(0),
      O => s_driver_counter_0_rstpot
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

