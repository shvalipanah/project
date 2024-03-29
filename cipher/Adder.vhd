library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

entity adder IS
Port (
ce : in STD_LOGIC;
a : in STD_LOGIC_VECTOR (15 downto 0);
b : in STD_LOGIC_VECTOR (15 downto 0);
cin : in STD_LOGIC;
sum : out STD_LOGIC_VECTOR (15 downto 0);
cout : out STD_LOGIC);
end adder;

architecture myAdder of adder is
  signal s :STD_LOGIC_VECTOR(16 downto 0);
begin
  with ce select 
    s <= ('0'&a)+b+ cin when '1', --X"000"&'0'&
          X"0000"&'0'  when '0',
          s when others;
    sum <= s(15 downto 0);
    cout <= s(16);
end myAdder;