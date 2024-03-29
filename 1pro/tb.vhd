 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE DATAFLOW OF testbench IS 

          COMPONENT Shift_reg 
          PORT(Par_LD:           IN std_logic_vector(7 DOWNTO 0);
              Serial_In:        IN std_logic;
              Serial_Out:       OUT std_logic;
              RST, LD, EN, CLK: IN std_logic);
          END COMPONENT;

           CONSTANT period : TIME := 100 ns;
			  signal CLK : STD_LOGIC := '1';
			  signal Par_LD : STD_LOGIC_VECTOR (7 DOWNTO 0);
			  SIGNAL Serial_In,Serial_Out : std_logic;
			  signal RST, LD, EN : STD_LOGIC;
          

  BEGIN

  
    run : Shift_reg port map (Par_LD,Serial_In,Serial_Out,RST, LD, EN,CLK);

    CLK <= NOT CLK AFTER period/2;
    
    RST <= '1',
    '0' AFTER 10 ns,
    '1' AFTER 400 ns,
    '0' AFTER 470 ns;  
    LD <= '0',
    '1' AFTER 10 ns,
    '0' AFTER 120 ns,
    '1' AFTER 280 ns,
    '0' AFTER 330 ns;
    EN <= '0',
    '1' AFTER 130 ns,
    '0' AFTER 230 ns,
    '1' AFTER 330 ns,
    '0' after 430 ns;
    
    
    Par_LD<= "11000010",
    "11001011" AFTER 10 ns,
    "11011110" AFTER 120 ns,
    "11000000" AFTER 280 ns,
    "00000010" AFTER 330 ns;
    
    Serial_In<= '1',
    '0' AFTER 130 ns,
    '1' AFTER 330 ns;
  END;

