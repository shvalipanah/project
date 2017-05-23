  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE ci OF testbench IS 

          COMPONENT cipher
          PORT(nrst : IN std_logic;
              clk : IN std_logic;
              start : IN std_logic;
              pt : IN std_logic_vector(15 DOWNTO 0);
              ct : OUT std_logic_vector(15 DOWNTO 0);
              ready : OUT std_logic);
          END COMPONENT;

          CONSTANT period : TIME := 50 ns;
			    signal CLK : STD_LOGIC := '0';
			    signal nrst,start,ready: STD_LOGIC;
			    signal pt,ct :STD_LOGIC_VECTOR (15 DOWNTO 0);
          

  BEGIN

    run : cipher port map (nrst,clk,start,pt,ct,ready);


    CLK <= NOT clk AFTER period/2;
    
    nrst <= '0',
    '1' AFTER 5 ns,
    '0' AFTER 1800 ns;
    
    start  <= '0',
    '1' AFTER 15 ns,
    '0' AFTER 75 ns,
    '1' after 800 ns;--
    
    pt <= X"3110",
    X"1025" after 15 ns,
    X"1100" after 800 ns;
 

  END;



