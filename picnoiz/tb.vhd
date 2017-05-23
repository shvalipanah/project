  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE tb OF testbench IS 

          COMPONENT filter
          PORT(clk,rst : IN std_logic;
                datao: OUT std_logic_vector(7 downto 0);
                cou: OUT INTEGER;
                
add: OUT std_logic_vector(7 downto 0));
          END COMPONENT;

          CONSTANT period : TIME := 50 ns;
			    signal CLK : STD_LOGIC := '0';
			    signal rst : STD_LOGIC;
			    signal da: std_logic_vector(7 downto 0);
			    signal co: INTEGER;
			    signal ad: std_logic_vector(7 downto 0);
          

  BEGIN

    run : filter port map (clk,rst,da,co,ad);

    CLK <= NOT clk AFTER period/2;
    rst <= '1',
    '0' after 20 ns;
    
  END;




