--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: carry_lookahead_adder_timesim.vhd
-- /___/   /\     Timestamp: Thu Dec 15 23:45:57 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf carry_lookahead_adder.pcf -rpw 100 -tpw 0 -ar Structure -tm carry_lookahead_adder -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim carry_lookahead_adder.ncd carry_lookahead_adder_timesim.vhd 
-- Device	: 3s100evq100-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: carry_lookahead_adder.ncd
-- Output file	: A:\ise\carryLookEhead\netgen\par\carry_lookahead_adder_timesim.vhd
-- # of Entities	: 1
-- Design Name	: carry_lookahead_adder
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

entity carry_lookahead_adder is
  port (
    cout : out STD_LOGIC; 
    cin : in STD_LOGIC := 'X'; 
    sum : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end carry_lookahead_adder;

architecture Structure of carry_lookahead_adder is
  signal cin_IBUF_74 : STD_LOGIC; 
  signal a_0_IBUF_79 : STD_LOGIC; 
  signal a_1_IBUF_80 : STD_LOGIC; 
  signal a_2_IBUF_81 : STD_LOGIC; 
  signal a_3_IBUF_82 : STD_LOGIC; 
  signal b_0_IBUF_84 : STD_LOGIC; 
  signal b_1_IBUF_85 : STD_LOGIC; 
  signal b_2_IBUF_86 : STD_LOGIC; 
  signal b_3_IBUF_87 : STD_LOGIC; 
  signal c_2_0 : STD_LOGIC; 
  signal cin_INBUF : STD_LOGIC; 
  signal sum_0_O : STD_LOGIC; 
  signal sum_1_O : STD_LOGIC; 
  signal sum_2_O : STD_LOGIC; 
  signal sum_3_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal a_2_INBUF : STD_LOGIC; 
  signal a_3_INBUF : STD_LOGIC; 
  signal cout_O : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal b_2_INBUF : STD_LOGIC; 
  signal b_3_INBUF : STD_LOGIC; 
  signal c_1_pack_1 : STD_LOGIC; 
  signal cout_OBUF_230 : STD_LOGIC; 
  signal c_3_pack_1 : STD_LOGIC; 
  signal sum_0_OBUF_242 : STD_LOGIC; 
  signal sum_1_OBUF_254 : STD_LOGIC; 
  signal sum_2_OBUF_266 : STD_LOGIC; 
  signal sum_3_OBUF_278 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal c : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  cin_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 694 ps
    )
    port map (
      I => cin,
      O => cin_INBUF
    );
  sum_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => sum_0_O,
      O => sum(0)
    );
  sum_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => sum_1_O,
      O => sum(1)
    );
  sum_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => sum_2_O,
      O => sum(2)
    );
  sum_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => sum_3_O,
      O => sum(3)
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_2_IBUF : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(2),
      O => a_2_INBUF
    );
  a_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 694 ps
    )
    port map (
      I => a(3),
      O => a_3_INBUF
    );
  cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => cout_O,
      O => cout
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_2_IBUF : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(2),
      O => b_2_INBUF
    );
  b_3_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 694 ps
    )
    port map (
      I => b(3),
      O => b_3_INBUF
    );
  c_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 694 ps
    )
    port map (
      I => c(2),
      O => c_2_0
    );
  c_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 694 ps
    )
    port map (
      I => c_1_pack_1,
      O => c(1)
    );
  cout_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X13Y43",
      PATHPULSE => 694 ps
    )
    port map (
      I => c_3_pack_1,
      O => c(3)
    );
  cin_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 694 ps
    )
    port map (
      I => cin_INBUF,
      O => cin_IBUF_74
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_79
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_80
    );
  a_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_2_INBUF,
      O => a_2_IBUF_81
    );
  a_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 694 ps
    )
    port map (
      I => a_3_INBUF,
      O => a_3_IBUF_82
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_84
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_85
    );
  b_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_2_INBUF,
      O => b_2_IBUF_86
    );
  b_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 694 ps
    )
    port map (
      I => b_3_INBUF,
      O => b_3_IBUF_87
    );
  c_1_or00001 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_0_IBUF_79,
      ADR2 => b_0_IBUF_84,
      ADR3 => cin_IBUF_74,
      O => c_1_pack_1
    );
  c_2_or0000 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_1_IBUF_80,
      ADR2 => b_1_IBUF_85,
      ADR3 => c(1),
      O => c(2)
    );
  c_3_or00001 : X_LUT4
    generic map(
      INIT => X"EE88",
      LOC => "SLICE_X13Y43"
    )
    port map (
      ADR0 => a_2_IBUF_81,
      ADR1 => b_2_IBUF_86,
      ADR2 => VCC,
      ADR3 => c_2_0,
      O => c_3_pack_1
    );
  cout1 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X13Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_3_IBUF_82,
      ADR2 => b_3_IBUF_87,
      ADR3 => c(3),
      O => cout_OBUF_230
    );
  Mxor_sum_Result_0_1 : X_LUT4
    generic map(
      INIT => X"A55A",
      LOC => "SLICE_X27Y43"
    )
    port map (
      ADR0 => cin_IBUF_74,
      ADR1 => VCC,
      ADR2 => a_0_IBUF_79,
      ADR3 => b_0_IBUF_84,
      O => sum_0_OBUF_242
    );
  Mxor_sum_Result_1_1 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_1_IBUF_80,
      ADR2 => b_1_IBUF_85,
      ADR3 => c(1),
      O => sum_1_OBUF_254
    );
  Mxor_sum_Result_2_1 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X13Y42"
    )
    port map (
      ADR0 => a_2_IBUF_81,
      ADR1 => b_2_IBUF_86,
      ADR2 => VCC,
      ADR3 => c_2_0,
      O => sum_2_OBUF_266
    );
  Mxor_sum_Result_3_1 : X_LUT4
    generic map(
      INIT => X"9696",
      LOC => "SLICE_X12Y42"
    )
    port map (
      ADR0 => c(3),
      ADR1 => b_3_IBUF_87,
      ADR2 => a_3_IBUF_82,
      ADR3 => VCC,
      O => sum_3_OBUF_278
    );
  sum_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 694 ps
    )
    port map (
      I => sum_0_OBUF_242,
      O => sum_0_O
    );
  sum_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 694 ps
    )
    port map (
      I => sum_1_OBUF_254,
      O => sum_1_O
    );
  sum_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 694 ps
    )
    port map (
      I => sum_2_OBUF_266,
      O => sum_2_O
    );
  sum_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 694 ps
    )
    port map (
      I => sum_3_OBUF_278,
      O => sum_3_O
    );
  cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 694 ps
    )
    port map (
      I => cout_OBUF_230,
      O => cout_O
    );
  NlwBlock_carry_lookahead_adder_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

