LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

ENTITY mux IS
PORT ( A: IN std_logic_vector(3 DOWNTO 0);
B: IN std_logic_vector(3 DOWNTO 0);
output: out std_logic_vector(3 DOWNTO 0);
sel: IN std_logic);
END mux;

ARCHITECTURE mymux of mux is 
  signal temp : std_logic_vector(3 downto 0);
begin
  output<=temp;
  with sel select
      temp <= A when '0',
              B when '1',
              temp when others;
end mymux;



