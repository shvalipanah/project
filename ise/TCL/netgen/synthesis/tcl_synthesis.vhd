--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: tcl_synthesis.vhd
-- /___/   /\     Timestamp: Sat Dec 17 00:44:28 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm tcl -w -dir netgen/synthesis -ofmt vhdl -sim tcl.ngc tcl_synthesis.vhd 
-- Device	: xc3s100e-5-vq100
-- Input file	: tcl.ngc
-- Output file	: A:\ise\TCL\netgen\synthesis\tcl_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: tcl
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

entity tcl is
  port (
    clk : in STD_LOGIC := 'X'; 
    g1 : out STD_LOGIC; 
    g2 : out STD_LOGIC; 
    r1 : out STD_LOGIC; 
    r2 : out STD_LOGIC; 
    y1 : out STD_LOGIC; 
    y2 : out STD_LOGIC; 
    stby : in STD_LOGIC := 'X'; 
    test : in STD_LOGIC := 'X'; 
    redtime : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    greentime : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    yeltime : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end tcl;

architecture Structure of tcl is
  signal g1_OBUF_1 : STD_LOGIC; 
  signal y2_OBUF_7 : STD_LOGIC; 
begin
  XST_GND : GND
    port map (
      G => g1_OBUF_1
    );
  XST_VCC : VCC
    port map (
      P => y2_OBUF_7
    );
  g1_OBUF : OBUF
    port map (
      I => g1_OBUF_1,
      O => g1
    );
  g2_OBUF : OBUF
    port map (
      I => g1_OBUF_1,
      O => g2
    );
  r1_OBUF : OBUF
    port map (
      I => g1_OBUF_1,
      O => r1
    );
  r2_OBUF : OBUF
    port map (
      I => g1_OBUF_1,
      O => r2
    );
  y1_OBUF : OBUF
    port map (
      I => y2_OBUF_7,
      O => y1
    );
  y2_OBUF : OBUF
    port map (
      I => y2_OBUF_7,
      O => y2
    );

end Structure;

