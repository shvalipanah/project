--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: LED_DRIVE_map.vhd
-- /___/   /\     Timestamp: Fri Feb 24 20:55:39 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf LED_DRIVE.pcf -rpw 100 -tpw 0 -ar Structure -tm LED_DRIVE -w -dir netgen/map -ofmt vhdl -sim LED_DRIVE_map.ncd LED_DRIVE_map.vhd 
-- Device	: 6slx9tqg144-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: LED_DRIVE_map.ncd
-- Output file	: A:\ise\test\netgen\map\LED_DRIVE_map.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity LED_DRIVE is
  port (
    clk : in STD_LOGIC := 'X'; 
    latch : out STD_LOGIC; 
    out_data : out STD_LOGIC; 
    DATA_16BIT : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end LED_DRIVE;

architecture Structure of LED_DRIVE is
  signal clk_BUFGP : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal DATA_16BIT_8_IBUF_0 : STD_LOGIC; 
  signal DATA_16BIT_9_IBUF_0 : STD_LOGIC; 
  signal out_data_OBUF_68 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_1 : STD_LOGIC; 
  signal DATA_16BIT_8_IBUF_4 : STD_LOGIC; 
  signal DATA_16BIT_9_IBUF_7 : STD_LOGIC; 
  signal out_data_INPUTREV_0_MUX_13_o : STD_LOGIC; 
  signal counter_2_pack_6 : STD_LOGIC; 
  signal counter_4_pack_8 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal counter : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal data : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      O => clk_BUFGP_IBUFG_1,
      I => clk
    );
  ProtoComp2_IMUX : X_BUF
    generic map(
      LOC => "PAD172",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_1,
      O => clk_BUFGP_IBUFG_0
    );
  DATA_16BIT_8_IBUF : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_16BIT_8_IBUF_4,
      I => DATA_16BIT(8)
    );
  ProtoComp2_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD121",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_16BIT_8_IBUF_4,
      O => DATA_16BIT_8_IBUF_0
    );
  DATA_16BIT_9_IBUF : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      O => DATA_16BIT_9_IBUF_7,
      I => DATA_16BIT(9)
    );
  ProtoComp2_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD122",
      PATHPULSE => 202 ps
    )
    port map (
      I => DATA_16BIT_9_IBUF_7,
      O => DATA_16BIT_9_IBUF_0
    );
  latch_OBUF : X_OBUF
    generic map(
      LOC => "PAD134"
    )
    port map (
      I => '1',
      O => latch
    );
  out_data_OBUF : X_OBUF
    generic map(
      LOC => "PAD136"
    )
    port map (
      I => out_data_OBUF_68,
      O => out_data
    );
  clk_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => clk_BUFGP_IBUFG_0,
      O => clk_BUFGP
    );
  Mmux_out_data_INPUTREV_0_MUX_13_o1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => X"FFFF0000FF00FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => DATA_16BIT_8_IBUF_0,
      ADR4 => data(0),
      ADR5 => counter(0),
      O => N0
    );
  out_data_23 : X_FF
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => out_data_INPUTREV_0_MUX_13_o,
      O => out_data_OBUF_68,
      RST => GND,
      SET => GND
    );
  Mmux_out_data_INPUTREV_0_MUX_13_o1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y11",
      INIT => X"AAAAAAABAAAAAAA8"
    )
    port map (
      ADR0 => data(0),
      ADR1 => counter(4),
      ADR2 => counter(3),
      ADR3 => counter(2),
      ADR4 => counter(1),
      ADR5 => N0,
      O => out_data_INPUTREV_0_MUX_13_o
    );
  counter_3_counter_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_4_pack_8,
      O => counter(4)
    );
  counter_3_counter_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => counter_2_pack_6,
      O => counter(2)
    );
  counter_3 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => Result(3),
      O => counter(3),
      RST => GND,
      SET => GND
    );
  Result_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"3FC0FF003FC0FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => counter(2),
      ADR2 => counter(0),
      ADR3 => counter(3),
      ADR4 => counter(1),
      ADR5 => '1',
      O => Result(3)
    );
  Result_4_1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"6AAAAAAA"
    )
    port map (
      ADR0 => counter(4),
      ADR1 => counter(2),
      ADR2 => counter(0),
      ADR3 => counter(3),
      ADR4 => counter(1),
      O => Result(4)
    );
  counter_4 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => Result(4),
      O => counter_4_pack_8,
      RST => GND,
      SET => GND
    );
  counter_1 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => Result(1),
      O => counter(1),
      RST => GND,
      SET => GND
    );
  Mcount_counter_xor_1_11 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"00FFFF0000FFFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => counter(1),
      ADR4 => counter(0),
      ADR5 => '1',
      O => Result(1)
    );
  Result_2_1 : X_LUT5
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"0FF0F0F0"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => counter(2),
      ADR3 => counter(1),
      ADR4 => counter(0),
      O => Result(2)
    );
  counter_2 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => Result(2),
      O => counter_2_pack_6,
      RST => GND,
      SET => GND
    );
  counter_0 : X_FF
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => Result(0),
      O => counter(0),
      RST => GND,
      SET => GND
    );
  Mcount_counter_xor_0_11_INV_0 : X_LUT6
    generic map(
      LOC => "SLICE_X9Y12",
      INIT => X"00FF00FF00FF00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => counter(0),
      ADR4 => '1',
      ADR5 => '1',
      O => Result(0)
    );
  data_0 : X_FF
    generic map(
      LOC => "SLICE_X10Y9",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => clk_BUFGP,
      I => DATA_16BIT_9_IBUF_0,
      O => data(0),
      RST => GND,
      SET => GND
    );
  NlwBlock_LED_DRIVE_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_LED_DRIVE_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

