--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ripple_adder4_timesim.vhd
-- /___/   /\     Timestamp: Thu Dec 15 22:22:52 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf ripple_adder4.pcf -rpw 100 -tpw 0 -ar Structure -tm ripple_adder4 -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ripple_adder4.ncd ripple_adder4_timesim.vhd 
-- Device	: 3s100evq100-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: ripple_adder4.ncd
-- Output file	: A:\ise\adder4_ripple\netgen\par\ripple_adder4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ripple_adder4
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

entity ripple_adder4 is
  port (
    cout : out STD_LOGIC; 
    C : in STD_LOGIC := 'X'; 
    S : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end ripple_adder4;

architecture Structure of ripple_adder4 is
  signal A_0_IBUF_98 : STD_LOGIC; 
  signal A_1_IBUF_99 : STD_LOGIC; 
  signal A_2_IBUF_100 : STD_LOGIC; 
  signal A_3_IBUF_101 : STD_LOGIC; 
  signal B_0_IBUF_102 : STD_LOGIC; 
  signal B_1_IBUF_103 : STD_LOGIC; 
  signal B_2_IBUF_104 : STD_LOGIC; 
  signal B_3_IBUF_105 : STD_LOGIC; 
  signal C_IBUF_110 : STD_LOGIC; 
  signal A_0_INBUF : STD_LOGIC; 
  signal A_1_INBUF : STD_LOGIC; 
  signal A_2_INBUF : STD_LOGIC; 
  signal A_3_INBUF : STD_LOGIC; 
  signal B_0_INBUF : STD_LOGIC; 
  signal B_1_INBUF : STD_LOGIC; 
  signal B_2_INBUF : STD_LOGIC; 
  signal B_3_INBUF : STD_LOGIC; 
  signal S_0_O : STD_LOGIC; 
  signal S_1_O : STD_LOGIC; 
  signal S_2_O : STD_LOGIC; 
  signal S_3_O : STD_LOGIC; 
  signal C_INBUF : STD_LOGIC; 
  signal cout_O : STD_LOGIC; 
  signal S_3_OBUF_F5MUX_230 : STD_LOGIC; 
  signal f4_Madd_sum_Madd_xor_0_11 : STD_LOGIC; 
  signal S_3_OBUF_BXINV_223 : STD_LOGIC; 
  signal f4_Madd_sum_Madd_xor_0_111_221 : STD_LOGIC; 
  signal f2_Madd_sum_Madd_cy_0_F5MUX_255 : STD_LOGIC; 
  signal f2_Madd_sum_Madd_cy_0_1 : STD_LOGIC; 
  signal f2_Madd_sum_Madd_cy_0_BXINV_248 : STD_LOGIC; 
  signal f2_Madd_sum_Madd_cy_0_11_246 : STD_LOGIC; 
  signal f4_Madd_sum_Madd_cy_0_F5MUX_280 : STD_LOGIC; 
  signal f4_Madd_sum_Madd_cy_0_1 : STD_LOGIC; 
  signal f4_Madd_sum_Madd_cy_0_BXINV_273 : STD_LOGIC; 
  signal f4_Madd_sum_Madd_cy_0_11_271 : STD_LOGIC; 
  signal S_1_OBUF_F5MUX_305 : STD_LOGIC; 
  signal f2_Madd_sum_Madd_xor_0_11 : STD_LOGIC; 
  signal S_1_OBUF_BXINV_298 : STD_LOGIC; 
  signal f2_Madd_sum_Madd_xor_0_111_296 : STD_LOGIC; 
  signal S_2_OBUF_316 : STD_LOGIC; 
  signal S_0_OBUF_328 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal f2_Madd_sum_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
begin
  A_0_IBUF : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 694 ps
    )
    port map (
      I => A(0),
      O => A_0_INBUF
    );
  A_1_IBUF : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 694 ps
    )
    port map (
      I => A(1),
      O => A_1_INBUF
    );
  A_2_IBUF : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 694 ps
    )
    port map (
      I => A(2),
      O => A_2_INBUF
    );
  A_3_IBUF : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 694 ps
    )
    port map (
      I => A(3),
      O => A_3_INBUF
    );
  B_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 694 ps
    )
    port map (
      I => B(0),
      O => B_0_INBUF
    );
  B_1_IBUF : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 694 ps
    )
    port map (
      I => B(1),
      O => B_1_INBUF
    );
  B_2_IBUF : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 694 ps
    )
    port map (
      I => B(2),
      O => B_2_INBUF
    );
  B_3_IBUF : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 694 ps
    )
    port map (
      I => B(3),
      O => B_3_INBUF
    );
  S_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => S_0_O,
      O => S(0)
    );
  S_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD24"
    )
    port map (
      I => S_1_O,
      O => S(1)
    );
  S_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => S_2_O,
      O => S(2)
    );
  S_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => S_3_O,
      O => S(3)
    );
  C_IBUF : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => C,
      O => C_INBUF
    );
  cout_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => cout_O,
      O => cout
    );
  S_3_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X12Y43"
    )
    port map (
      IA => f4_Madd_sum_Madd_xor_0_111_221,
      IB => f4_Madd_sum_Madd_xor_0_11,
      SEL => S_3_OBUF_BXINV_223,
      O => S_3_OBUF_F5MUX_230
    );
  S_3_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X12Y43",
      PATHPULSE => 694 ps
    )
    port map (
      I => f2_Madd_sum_Madd_cy(0),
      O => S_3_OBUF_BXINV_223
    );
  f2_Madd_sum_Madd_cy_0_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 694 ps
    )
    port map (
      I => f2_Madd_sum_Madd_cy_0_F5MUX_255,
      O => f2_Madd_sum_Madd_cy(0)
    );
  f2_Madd_sum_Madd_cy_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y42"
    )
    port map (
      IA => f2_Madd_sum_Madd_cy_0_11_246,
      IB => f2_Madd_sum_Madd_cy_0_1,
      SEL => f2_Madd_sum_Madd_cy_0_BXINV_248,
      O => f2_Madd_sum_Madd_cy_0_F5MUX_255
    );
  f2_Madd_sum_Madd_cy_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y42",
      PATHPULSE => 694 ps
    )
    port map (
      I => C_IBUF_110,
      O => f2_Madd_sum_Madd_cy_0_BXINV_248
    );
  f4_Madd_sum_Madd_cy_0_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X25Y43"
    )
    port map (
      IA => f4_Madd_sum_Madd_cy_0_11_271,
      IB => f4_Madd_sum_Madd_cy_0_1,
      SEL => f4_Madd_sum_Madd_cy_0_BXINV_273,
      O => f4_Madd_sum_Madd_cy_0_F5MUX_280
    );
  f4_Madd_sum_Madd_cy_0_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X25Y43",
      PATHPULSE => 694 ps
    )
    port map (
      I => f2_Madd_sum_Madd_cy(0),
      O => f4_Madd_sum_Madd_cy_0_BXINV_273
    );
  S_1_OBUF_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X24Y43"
    )
    port map (
      IA => f2_Madd_sum_Madd_xor_0_111_296,
      IB => f2_Madd_sum_Madd_xor_0_11,
      SEL => S_1_OBUF_BXINV_298,
      O => S_1_OBUF_F5MUX_305
    );
  S_1_OBUF_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X24Y43",
      PATHPULSE => 694 ps
    )
    port map (
      I => C_IBUF_110,
      O => S_1_OBUF_BXINV_298
    );
  A_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD18",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_1_INBUF,
      O => A_1_IBUF_99
    );
  A_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD10",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_0_INBUF,
      O => A_0_IBUF_98
    );
  A_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD17",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_2_INBUF,
      O => A_2_IBUF_100
    );
  A_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD15",
      PATHPULSE => 694 ps
    )
    port map (
      I => A_3_INBUF,
      O => A_3_IBUF_101
    );
  B_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD13",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_0_INBUF,
      O => B_0_IBUF_102
    );
  B_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD14",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_1_INBUF,
      O => B_1_IBUF_103
    );
  B_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD8",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_2_INBUF,
      O => B_2_IBUF_104
    );
  B_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD2",
      PATHPULSE => 694 ps
    )
    port map (
      I => B_3_INBUF,
      O => B_3_IBUF_105
    );
  C_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 694 ps
    )
    port map (
      I => C_INBUF,
      O => C_IBUF_110
    );
  f4_Madd_sum_Madd_xor_0_112 : X_LUT4
    generic map(
      INIT => X"936C",
      LOC => "SLICE_X12Y43"
    )
    port map (
      ADR0 => A_2_IBUF_100,
      ADR1 => B_3_IBUF_105,
      ADR2 => B_2_IBUF_104,
      ADR3 => A_3_IBUF_101,
      O => f4_Madd_sum_Madd_xor_0_111_221
    );
  f4_Madd_sum_Madd_xor_0_111 : X_LUT4
    generic map(
      INIT => X"9996",
      LOC => "SLICE_X12Y43"
    )
    port map (
      ADR0 => B_3_IBUF_105,
      ADR1 => A_3_IBUF_101,
      ADR2 => A_2_IBUF_100,
      ADR3 => B_2_IBUF_104,
      O => f4_Madd_sum_Madd_xor_0_11
    );
  f2_Madd_sum_Madd_cy_0_12 : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => B_1_IBUF_103,
      ADR1 => A_1_IBUF_99,
      ADR2 => A_0_IBUF_98,
      ADR3 => B_0_IBUF_102,
      O => f2_Madd_sum_Madd_cy_0_11_246
    );
  f2_Madd_sum_Madd_cy_0_11 : X_LUT4
    generic map(
      INIT => X"EEE8",
      LOC => "SLICE_X24Y42"
    )
    port map (
      ADR0 => B_1_IBUF_103,
      ADR1 => A_1_IBUF_99,
      ADR2 => A_0_IBUF_98,
      ADR3 => B_0_IBUF_102,
      O => f2_Madd_sum_Madd_cy_0_1
    );
  f4_Madd_sum_Madd_cy_0_12 : X_LUT4
    generic map(
      INIT => X"EA80",
      LOC => "SLICE_X25Y43"
    )
    port map (
      ADR0 => B_3_IBUF_105,
      ADR1 => B_2_IBUF_104,
      ADR2 => A_2_IBUF_100,
      ADR3 => A_3_IBUF_101,
      O => f4_Madd_sum_Madd_cy_0_11_271
    );
  f4_Madd_sum_Madd_cy_0_11 : X_LUT4
    generic map(
      INIT => X"FEA8",
      LOC => "SLICE_X25Y43"
    )
    port map (
      ADR0 => B_3_IBUF_105,
      ADR1 => B_2_IBUF_104,
      ADR2 => A_2_IBUF_100,
      ADR3 => A_3_IBUF_101,
      O => f4_Madd_sum_Madd_cy_0_1
    );
  f2_Madd_sum_Madd_xor_0_112 : X_LUT4
    generic map(
      INIT => X"9666",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => B_1_IBUF_103,
      ADR1 => A_1_IBUF_99,
      ADR2 => A_0_IBUF_98,
      ADR3 => B_0_IBUF_102,
      O => f2_Madd_sum_Madd_xor_0_111_296
    );
  f2_Madd_sum_Madd_xor_0_111 : X_LUT4
    generic map(
      INIT => X"9996",
      LOC => "SLICE_X24Y43"
    )
    port map (
      ADR0 => B_1_IBUF_103,
      ADR1 => A_1_IBUF_99,
      ADR2 => A_0_IBUF_98,
      ADR3 => B_0_IBUF_102,
      O => f2_Madd_sum_Madd_xor_0_11
    );
  f3_Madd_sum_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"C33C",
      LOC => "SLICE_X13Y42"
    )
    port map (
      ADR0 => VCC,
      ADR1 => B_2_IBUF_104,
      ADR2 => A_2_IBUF_100,
      ADR3 => f2_Madd_sum_Madd_cy(0),
      O => S_2_OBUF_316
    );
  f1_Madd_sum_Madd_xor_0_11 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X13Y43"
    )
    port map (
      ADR0 => A_0_IBUF_98,
      ADR1 => B_0_IBUF_102,
      ADR2 => VCC,
      ADR3 => C_IBUF_110,
      O => S_0_OBUF_328
    );
  S_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD11",
      PATHPULSE => 694 ps
    )
    port map (
      I => S_0_OBUF_328,
      O => S_0_O
    );
  S_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 694 ps
    )
    port map (
      I => S_1_OBUF_F5MUX_305,
      O => S_1_O
    );
  S_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD7",
      PATHPULSE => 694 ps
    )
    port map (
      I => S_2_OBUF_316,
      O => S_2_O
    );
  S_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD9",
      PATHPULSE => 694 ps
    )
    port map (
      I => S_3_OBUF_F5MUX_230,
      O => S_3_O
    );
  cout_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 694 ps
    )
    port map (
      I => f4_Madd_sum_Madd_cy_0_F5MUX_280,
      O => cout_O
    );
  NlwBlock_ripple_adder4_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

