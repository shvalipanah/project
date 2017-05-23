LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

ENTITY fouradder IS
PORT ( A: IN std_logic_vector(3 DOWNTO 0);
B: IN std_logic_vector(3 DOWNTO 0);
C: IN std_logic;
S: out std_logic_vector(3 DOWNTO 0);
cout:out std_logic);
END fouradder;

ARCHITECTURE myfbadder of fouradder is 
  signal ctemp:std_logic_vector(2 DOWNTO 0);
begin
  f1: entity work.adder(myAdder) port map (A(0),B(0),C,S(0),ctemp(0));
  f2: entity work.adder(myAdder) port map (A(1),B(1),ctemp(0),S(1),ctemp(1));
    
  f3: entity work.adder(myAdder) port map (A(2),B(2),ctemp(1),S(2),ctemp(2));
  f4: entity work.adder(myAdder) port map (A(3),B(3),ctemp(2),S(3),cout);
end myfbadder;



