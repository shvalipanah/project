
-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE tb OF testbench IS 

  -- Component Declaration
          COMPONENT CSA
         PORT ( A: IN std_logic_vector(7 DOWNTO 0);
                B: IN std_logic_vector(7 DOWNTO 0);
                S: out std_logic_vector(7 DOWNTO 0);
                C: IN std_logic);
          END COMPONENT;

			  signal cin : STD_LOGIC;
			  signal sum,ain,bin :STD_LOGIC_VECTOR (7 DOWNTO 0);
          

  BEGIN

  -- Component Instantiation
        run : CSA port map (ain ,bin ,sum ,cin);


  --  Test Bench Statements
--     tb : PROCESS
--     BEGIN
    ain <= X"03",
    X"45" AFTER 400 ns,
    X"71" AFTER 800 ns;
    bin <= X"f1",
    X"41" AFTER 400 ns,
    X"01" AFTER 800 ns;
    cin<='0';

--        wait; -- will wait forever
--     END PROCESS tb;
  --  End Test Bench 

  END;


