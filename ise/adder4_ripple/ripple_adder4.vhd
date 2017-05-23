----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:08:23 12/12/2016 
-- Design Name: 
-- Module Name:    ripple_adder4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------


LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

ENTITY ripple_adder4 IS
PORT ( A: IN std_logic_vector(3 DOWNTO 0);
B: IN std_logic_vector(3 DOWNTO 0);
C: IN std_logic;
S: out std_logic_vector(3 DOWNTO 0);
cout:out std_logic);
END ripple_adder4;


ARCHITECTURE Behavioral of ripple_adder4 is 
component full_adder is
 port (A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        cin : IN STD_LOGIC;
        output :OUT STD_LOGIC;
        cout : OUT STD_LOGIC
          );
end component;

  signal ctemp:std_logic_vector(2 DOWNTO 0);
begin
  f1: full_adder port map (A(0),B(0),C,S(0),ctemp(0));
  f2: full_adder port map (A(1),B(1),ctemp(0),S(1),ctemp(1));
  f3: full_adder port map (A(2),B(2),ctemp(1),S(2),ctemp(2));
  f4: full_adder port map (A(3),B(3),ctemp(2),S(3),cout);
end Behavioral;






