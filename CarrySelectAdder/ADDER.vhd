LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

ENTITY CSA IS
PORT ( A: IN std_logic_vector(7 DOWNTO 0);
B: IN std_logic_vector(7 DOWNTO 0);
S: out std_logic_vector(7 DOWNTO 0);
C: IN std_logic);
END CSA;

ARCHITECTURE myCSA of CSA is 
signal ctemp : std_logic_vector(2 DOWNTO 0);
signal temp1,temp2 : std_logic_vector(3 DOWNTO 0);
begin
  f1:entity work.fouradder(myfbadder) port map (A(3 downto 0),B(3 downto 0),C,S(3 downto 0),ctemp(0));
  f2:entity work.fouradder(myfbadder) port map (A(7 downto 4),B(7 downto 4),'0',temp1,ctemp(1));
  f3:entity work.fouradder(myfbadder) port map (A(7 downto 4),B(7 downto 4),'1',temp2,ctemp(2));
    
  mux: entity work.mux(mymux) port map(temp1,temp2,S(7 downto 4),ctemp(0));
  
  
end myCSA;

