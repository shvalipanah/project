--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: LED_DRIVE_synthesis.vhd
-- /___/   /\     Timestamp: Fri Feb 24 23:21:58 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm LED_DRIVE -w -dir netgen/synthesis -ofmt vhdl -sim LED_DRIVE.ngc LED_DRIVE_synthesis.vhd 
-- Device	: xc6slx9-3-tqg144
-- Input file	: LED_DRIVE.ngc
-- Output file	: A:\ise\test\netgen\synthesis\LED_DRIVE_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: LED_DRIVE
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

entity LED_DRIVE is
  port (
    clk : in STD_LOGIC := 'X'; 
    latch : out STD_LOGIC; 
    out_data : out STD_LOGIC; 
    DATA_16BIT : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end LED_DRIVE;

architecture Structure of LED_DRIVE is
  signal DATA_16BIT_7_IBUF_0 : STD_LOGIC; 
  signal DATA_16BIT_6_IBUF_1 : STD_LOGIC; 
  signal DATA_16BIT_5_IBUF_2 : STD_LOGIC; 
  signal DATA_16BIT_4_IBUF_3 : STD_LOGIC; 
  signal DATA_16BIT_3_IBUF_4 : STD_LOGIC; 
  signal DATA_16BIT_2_IBUF_5 : STD_LOGIC; 
  signal DATA_16BIT_1_IBUF_6 : STD_LOGIC; 
  signal DATA_16BIT_0_IBUF_7 : STD_LOGIC; 
  signal DATA_16BIT_15_IBUF_8 : STD_LOGIC; 
  signal DATA_16BIT_14_IBUF_9 : STD_LOGIC; 
  signal DATA_16BIT_13_IBUF_10 : STD_LOGIC; 
  signal DATA_16BIT_12_IBUF_11 : STD_LOGIC; 
  signal DATA_16BIT_11_IBUF_12 : STD_LOGIC; 
  signal DATA_16BIT_10_IBUF_13 : STD_LOGIC; 
  signal DATA_16BIT_9_IBUF_14 : STD_LOGIC; 
  signal DATA_16BIT_8_IBUF_15 : STD_LOGIC; 
  signal clk_BUFGP_16 : STD_LOGIC; 
  signal out_data_OBUF_17 : STD_LOGIC; 
  signal latch_OBUF_18 : STD_LOGIC; 
  signal out_data_counter_3_MUX_49_o : STD_LOGIC; 
  signal counter_31_GND_5_o_add_2_OUT_4_Q : STD_LOGIC; 
  signal counter_31_GND_5_o_add_2_OUT_3_Q : STD_LOGIC; 
  signal counter_31_GND_5_o_add_2_OUT_2_Q : STD_LOGIC; 
  signal counter_31_GND_5_o_add_2_OUT_1_Q : STD_LOGIC; 
  signal counter_31_GND_5_o_add_2_OUT_0_Q : STD_LOGIC; 
  signal latch_GND_5_o_MUX_48_o_norst : STD_LOGIC; 
  signal Mmux_out_data_counter_3_MUX_49_o_4_f7_38 : STD_LOGIC; 
  signal Mmux_out_data_counter_3_MUX_49_o_6_39 : STD_LOGIC; 
  signal Mmux_out_data_counter_3_MUX_49_o_51_40 : STD_LOGIC; 
  signal Mmux_out_data_counter_3_MUX_49_o_3_f7_41 : STD_LOGIC; 
  signal Mmux_out_data_counter_3_MUX_49_o_5_42 : STD_LOGIC; 
  signal Mmux_out_data_counter_3_MUX_49_o_4_43 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_0_Q_45 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_1_Q_46 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_2_Q_47 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_3_Q_48 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q : STD_LOGIC; 
  signal Mcount_counter_cy_1_rt_69 : STD_LOGIC; 
  signal Mcount_counter_cy_2_rt_70 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_1_rt_71 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_2_rt_72 : STD_LOGIC; 
  signal Madd_counter_31_GND_5_o_add_2_OUT_cy_3_rt_73 : STD_LOGIC; 
  signal Mcount_counter_xor_3_rt_74 : STD_LOGIC; 
  signal latch_rstpot : STD_LOGIC; 
  signal counter_0_rstpot_76 : STD_LOGIC; 
  signal counter_1_rstpot_77 : STD_LOGIC; 
  signal counter_2_rstpot_78 : STD_LOGIC; 
  signal counter_3_rstpot_79 : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_counter_cy : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => latch_GND_5_o_MUX_48_o_norst
    );
  XST_GND : GND
    port map (
      G => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q
    );
  out_data_3 : FD
    port map (
      C => clk_BUFGP_16,
      D => out_data_counter_3_MUX_49_o,
      Q => out_data_OBUF_17
    );
  Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      DI => latch_GND_5_o_MUX_48_o_norst,
      S => Mcount_counter_lut(0),
      O => Mcount_counter_cy(0)
    );
  Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      LI => Mcount_counter_lut(0),
      O => Result(0)
    );
  Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(0),
      DI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      S => Mcount_counter_cy_1_rt_69,
      O => Mcount_counter_cy(1)
    );
  Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => Mcount_counter_cy(0),
      LI => Mcount_counter_cy_1_rt_69,
      O => Result(1)
    );
  Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(1),
      DI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      S => Mcount_counter_cy_2_rt_70,
      O => Mcount_counter_cy(2)
    );
  Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => Mcount_counter_cy(1),
      LI => Mcount_counter_cy_2_rt_70,
      O => Result(2)
    );
  Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => Mcount_counter_cy(2),
      LI => Mcount_counter_xor_3_rt_74,
      O => Result(3)
    );
  Mmux_out_data_counter_3_MUX_49_o_2_f8 : MUXF8
    port map (
      I0 => Mmux_out_data_counter_3_MUX_49_o_4_f7_38,
      I1 => Mmux_out_data_counter_3_MUX_49_o_3_f7_41,
      S => counter(3),
      O => out_data_counter_3_MUX_49_o
    );
  Mmux_out_data_counter_3_MUX_49_o_4_f7 : MUXF7
    port map (
      I0 => Mmux_out_data_counter_3_MUX_49_o_6_39,
      I1 => Mmux_out_data_counter_3_MUX_49_o_51_40,
      S => counter(2),
      O => Mmux_out_data_counter_3_MUX_49_o_4_f7_38
    );
  Mmux_out_data_counter_3_MUX_49_o_6 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => DATA_16BIT_10_IBUF_13,
      I3 => DATA_16BIT_11_IBUF_12,
      I4 => DATA_16BIT_9_IBUF_14,
      I5 => DATA_16BIT_8_IBUF_15,
      O => Mmux_out_data_counter_3_MUX_49_o_6_39
    );
  Mmux_out_data_counter_3_MUX_49_o_51 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => DATA_16BIT_14_IBUF_9,
      I3 => DATA_16BIT_15_IBUF_8,
      I4 => DATA_16BIT_13_IBUF_10,
      I5 => DATA_16BIT_12_IBUF_11,
      O => Mmux_out_data_counter_3_MUX_49_o_51_40
    );
  Mmux_out_data_counter_3_MUX_49_o_3_f7 : MUXF7
    port map (
      I0 => Mmux_out_data_counter_3_MUX_49_o_5_42,
      I1 => Mmux_out_data_counter_3_MUX_49_o_4_43,
      S => counter(2),
      O => Mmux_out_data_counter_3_MUX_49_o_3_f7_41
    );
  Mmux_out_data_counter_3_MUX_49_o_5 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => DATA_16BIT_2_IBUF_5,
      I3 => DATA_16BIT_3_IBUF_4,
      I4 => DATA_16BIT_1_IBUF_6,
      I5 => DATA_16BIT_0_IBUF_7,
      O => Mmux_out_data_counter_3_MUX_49_o_5_42
    );
  Mmux_out_data_counter_3_MUX_49_o_4 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => DATA_16BIT_6_IBUF_1,
      I3 => DATA_16BIT_7_IBUF_0,
      I4 => DATA_16BIT_5_IBUF_2,
      I5 => DATA_16BIT_4_IBUF_3,
      O => Mmux_out_data_counter_3_MUX_49_o_4_43
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_0_Q : MUXCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      DI => latch_GND_5_o_MUX_48_o_norst,
      S => Madd_counter_31_GND_5_o_add_2_OUT_lut_0_Q,
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_0_Q_45
    );
  Madd_counter_31_GND_5_o_add_2_OUT_xor_0_Q : XORCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      LI => Madd_counter_31_GND_5_o_add_2_OUT_lut_0_Q,
      O => counter_31_GND_5_o_add_2_OUT_0_Q
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_0_Q_45,
      DI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      S => Madd_counter_31_GND_5_o_add_2_OUT_cy_1_rt_71,
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_1_Q_46
    );
  Madd_counter_31_GND_5_o_add_2_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_0_Q_45,
      LI => Madd_counter_31_GND_5_o_add_2_OUT_cy_1_rt_71,
      O => counter_31_GND_5_o_add_2_OUT_1_Q
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_1_Q_46,
      DI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      S => Madd_counter_31_GND_5_o_add_2_OUT_cy_2_rt_72,
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_2_Q_47
    );
  Madd_counter_31_GND_5_o_add_2_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_1_Q_46,
      LI => Madd_counter_31_GND_5_o_add_2_OUT_cy_2_rt_72,
      O => counter_31_GND_5_o_add_2_OUT_2_Q
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_2_Q_47,
      DI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      S => Madd_counter_31_GND_5_o_add_2_OUT_cy_3_rt_73,
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_3_Q_48
    );
  Madd_counter_31_GND_5_o_add_2_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_2_Q_47,
      LI => Madd_counter_31_GND_5_o_add_2_OUT_cy_3_rt_73,
      O => counter_31_GND_5_o_add_2_OUT_3_Q
    );
  Madd_counter_31_GND_5_o_add_2_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_counter_31_GND_5_o_add_2_OUT_cy_3_Q_48,
      LI => Madd_counter_31_GND_5_o_add_2_OUT_cy_10_Q,
      O => counter_31_GND_5_o_add_2_OUT_4_Q
    );
  DATA_16BIT_15_IBUF : IBUF
    port map (
      I => DATA_16BIT(15),
      O => DATA_16BIT_15_IBUF_8
    );
  DATA_16BIT_14_IBUF : IBUF
    port map (
      I => DATA_16BIT(14),
      O => DATA_16BIT_14_IBUF_9
    );
  DATA_16BIT_13_IBUF : IBUF
    port map (
      I => DATA_16BIT(13),
      O => DATA_16BIT_13_IBUF_10
    );
  DATA_16BIT_12_IBUF : IBUF
    port map (
      I => DATA_16BIT(12),
      O => DATA_16BIT_12_IBUF_11
    );
  DATA_16BIT_11_IBUF : IBUF
    port map (
      I => DATA_16BIT(11),
      O => DATA_16BIT_11_IBUF_12
    );
  DATA_16BIT_10_IBUF : IBUF
    port map (
      I => DATA_16BIT(10),
      O => DATA_16BIT_10_IBUF_13
    );
  DATA_16BIT_9_IBUF : IBUF
    port map (
      I => DATA_16BIT(9),
      O => DATA_16BIT_9_IBUF_14
    );
  DATA_16BIT_8_IBUF : IBUF
    port map (
      I => DATA_16BIT(8),
      O => DATA_16BIT_8_IBUF_15
    );
  DATA_16BIT_7_IBUF : IBUF
    port map (
      I => DATA_16BIT(7),
      O => DATA_16BIT_7_IBUF_0
    );
  DATA_16BIT_6_IBUF : IBUF
    port map (
      I => DATA_16BIT(6),
      O => DATA_16BIT_6_IBUF_1
    );
  DATA_16BIT_5_IBUF : IBUF
    port map (
      I => DATA_16BIT(5),
      O => DATA_16BIT_5_IBUF_2
    );
  DATA_16BIT_4_IBUF : IBUF
    port map (
      I => DATA_16BIT(4),
      O => DATA_16BIT_4_IBUF_3
    );
  DATA_16BIT_3_IBUF : IBUF
    port map (
      I => DATA_16BIT(3),
      O => DATA_16BIT_3_IBUF_4
    );
  DATA_16BIT_2_IBUF : IBUF
    port map (
      I => DATA_16BIT(2),
      O => DATA_16BIT_2_IBUF_5
    );
  DATA_16BIT_1_IBUF : IBUF
    port map (
      I => DATA_16BIT(1),
      O => DATA_16BIT_1_IBUF_6
    );
  DATA_16BIT_0_IBUF : IBUF
    port map (
      I => DATA_16BIT(0),
      O => DATA_16BIT_0_IBUF_7
    );
  latch_OBUF : OBUF
    port map (
      I => latch_OBUF_18,
      O => latch
    );
  out_data_OBUF : OBUF
    port map (
      I => out_data_OBUF_17,
      O => out_data
    );
  Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(1),
      O => Mcount_counter_cy_1_rt_69
    );
  Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(2),
      O => Mcount_counter_cy_2_rt_70
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(1),
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_1_rt_71
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(2),
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_2_rt_72
    );
  Madd_counter_31_GND_5_o_add_2_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(3),
      O => Madd_counter_31_GND_5_o_add_2_OUT_cy_3_rt_73
    );
  Mcount_counter_xor_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(3),
      O => Mcount_counter_xor_3_rt_74
    );
  latch_51 : FD
    port map (
      C => clk_BUFGP_16,
      D => latch_rstpot,
      Q => latch_OBUF_18
    );
  latch_rstpot1 : LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
    port map (
      I0 => counter_31_GND_5_o_add_2_OUT_0_Q,
      I1 => counter_31_GND_5_o_add_2_OUT_1_Q,
      I2 => counter_31_GND_5_o_add_2_OUT_2_Q,
      I3 => counter_31_GND_5_o_add_2_OUT_3_Q,
      I4 => counter_31_GND_5_o_add_2_OUT_4_Q,
      O => latch_rstpot
    );
  counter_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      D => counter_0_rstpot_76,
      Q => counter(0)
    );
  counter_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      D => counter_1_rstpot_77,
      Q => counter(1)
    );
  counter_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      D => counter_2_rstpot_78,
      Q => counter(2)
    );
  counter_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_16,
      D => counter_3_rstpot_79,
      Q => counter(3)
    );
  counter_0_rstpot : LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
    port map (
      I0 => Result(0),
      I1 => counter_31_GND_5_o_add_2_OUT_0_Q,
      I2 => counter_31_GND_5_o_add_2_OUT_1_Q,
      I3 => counter_31_GND_5_o_add_2_OUT_2_Q,
      I4 => counter_31_GND_5_o_add_2_OUT_3_Q,
      I5 => counter_31_GND_5_o_add_2_OUT_4_Q,
      O => counter_0_rstpot_76
    );
  counter_1_rstpot : LUT6
    generic map(
      INIT => X"CCCCCCC8CCCCCCCC"
    )
    port map (
      I0 => counter_31_GND_5_o_add_2_OUT_0_Q,
      I1 => Result(1),
      I2 => counter_31_GND_5_o_add_2_OUT_1_Q,
      I3 => counter_31_GND_5_o_add_2_OUT_2_Q,
      I4 => counter_31_GND_5_o_add_2_OUT_3_Q,
      I5 => counter_31_GND_5_o_add_2_OUT_4_Q,
      O => counter_1_rstpot_77
    );
  counter_2_rstpot : LUT6
    generic map(
      INIT => X"CCCCCCC8CCCCCCCC"
    )
    port map (
      I0 => counter_31_GND_5_o_add_2_OUT_0_Q,
      I1 => Result(2),
      I2 => counter_31_GND_5_o_add_2_OUT_1_Q,
      I3 => counter_31_GND_5_o_add_2_OUT_2_Q,
      I4 => counter_31_GND_5_o_add_2_OUT_3_Q,
      I5 => counter_31_GND_5_o_add_2_OUT_4_Q,
      O => counter_2_rstpot_78
    );
  counter_3_rstpot : LUT6
    generic map(
      INIT => X"CCCCCCC8CCCCCCCC"
    )
    port map (
      I0 => counter_31_GND_5_o_add_2_OUT_0_Q,
      I1 => Result(3),
      I2 => counter_31_GND_5_o_add_2_OUT_1_Q,
      I3 => counter_31_GND_5_o_add_2_OUT_2_Q,
      I4 => counter_31_GND_5_o_add_2_OUT_3_Q,
      I5 => counter_31_GND_5_o_add_2_OUT_4_Q,
      O => counter_3_rstpot_79
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_16
    );
  Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => counter(0),
      O => Mcount_counter_lut(0)
    );
  Madd_counter_31_GND_5_o_add_2_OUT_lut_0_INV_0 : INV
    port map (
      I => counter(0),
      O => Madd_counter_31_GND_5_o_add_2_OUT_lut_0_Q
    );

end Structure;

