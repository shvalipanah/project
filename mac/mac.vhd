LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

ENTITY MAC IS
PORT( A: IN std_logic_vector(7 DOWNTO 0);
B: IN std_logic_vector(7 DOWNTO 0);
N: IN std_logic_vector(7 DOWNTO 0);
ROUT: OUT std_logic_vector(19 DOWNTO 0);
RST, CLK: IN std_logic);
END MAC;

architecture myMAC of MAC is
   
begin
 -- MULT: entity work.MULT(muyMULT) port map (A,B,temp);  
 
  process(CLK,RST)
    variable resultTemp : STD_LOGIC_VECTOR(19 downto 0):=X"00000";
    variable temp : STD_LOGIC_VECTOR(19 downto 0); 
    variable number : std_logic_vector(7 DOWNTO 0):=X"00";
    
    begin
      temp:= "0000"&(A*B);
      if RST='1'then
        number:=X"00"; ----
        ROUT<=X"00000";
        end if;
      if( CLK'event and CLK='1'and number /= N) then
        resultTemp := temp + resultTemp;
        ROUT <=resultTemp;
        number := number + 1;
        end IF;
  end process;
end myMAC;
