LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY Shift_reg IS
PORT( Par_LD:           IN std_logic_vector(7 DOWNTO 0);
      Serial_In:        IN std_logic;
      Serial_Out:       OUT std_logic;
    --  par :              OUT std_logic_vector(7 DOWNTO 0);
      RST, LD, EN, CLK: IN std_logic);
END Shift_reg;

ARCHITECTURE MyShiftReg OF Shift_reg IS
  
  signal ParLD : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL SERIALTEMP : STD_LOGIC;
  SIGNAL INTEMP :STD_LOGIC_VECTOR(2 DOWNTO 0);
  
BEGIN
  
  INTEMP <= (RST&LD&EN);
  Serial_Out <=  SERIALTEMP;
--  par <= ParLD;
   
  ParLD <= Par_LD WHEN ((INTEMP ="010")and (CLK='1') and CLK'event)else
           "00000000" WHEN ((INTEMP ="100") and (CLK='1') and CLK'event)else
           Serial_In&ParLD(7 downto 1) WHEN ((INTEMP = "001") and (CLK='1') and CLK'event)else
           ParLD ;
            
  SERIALTEMP <= ParLD(0) WHEN ((INTEMP = "001")and (CLK='1') and CLK'event)else
                SERIALTEMP;      
END MyShiftReg;
