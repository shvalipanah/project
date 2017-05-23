-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE tb OF testbench IS 

  -- Component Declaration
          COMPONENT MAC
          PORT(
                  A: IN std_logic_vector(7 DOWNTO 0);
B: IN std_logic_vector(7 DOWNTO 0);
N: IN std_logic_vector(7 DOWNTO 0);
ROUT: OUT std_logic_vector(19 DOWNTO 0);
RST, CLK: IN std_logic
                  );
          END COMPONENT;

           CONSTANT period : TIME := 100 ns;
			  signal clk : STD_LOGIC := '0';
			  signal reset : STD_LOGIC;
			  signal a : std_logic_vector(7 DOWNTO 0);
			  signal b : std_logic_vector(7 DOWNTO 0);
			  signal n : std_logic_vector(7 DOWNTO 0);
        signal result: std_logic_vector(19 DOWNTO 0);

  BEGIN

  -- Component Instantiation
        run : MAC port map (a,b,n,result,reset,clk);


  --  Test Bench Statements
--     tb : PROCESS
--     BEGIN


    clk <= NOT clk AFTER period/2;
    
    reset <= '0',
    '1' AFTER  400 ns;
    
    
    a <= X"21",
    X"11" AFTER 60 ns,
    X"70" AFTER 160 ns;
    b <= X"11",
    X"10" AFTER 160 ns;
    n <= X"03",
    X"00" AFTER 400 ns;

--        wait; -- will wait forever
--     END PROCESS tb;
  --  End Test Bench 

  END;


