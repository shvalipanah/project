-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT AluOperation
          PORT(
                  a,b :IN STD_LOGIC_VECTOR (31 DOWNTO 0);
						op  :IN STD_LOGIC_VECTOR (3 DOWNTO 0);
						clk,reset :IN STD_LOGIC ;
						Z :OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
						OV,Cout,Sign :OUT STD_LOGIC
                  );
          END COMPONENT;

           CONSTANT period : TIME := 50 ns;
			  signal clk : STD_LOGIC := '0';
			  signal op : STD_LOGIC_VECTOR (3 DOWNTO 0);
			  signal reset,OV,Cout,Sign : STD_LOGIC;
			  signal a, b ,Z :STD_LOGIC_VECTOR (31 DOWNTO 0);
          

  BEGIN

  -- Component Instantiation
        run : AluOperation port map (a ,b ,op ,clk,reset,Z ,OV,Cout,Sign);


  --  Test Bench Statements
--     tb : PROCESS
--     BEGIN


    clk <= NOT clk AFTER period/2;
    reset <= '1',
    '0' AFTER 10 ns;
    a <= X"00000071",
    X"40000001" AFTER 205 ns,
    X"F8000071" AFTER 375 ns;
    b <= X"00000010",
    X"40000071" AFTER 205 ns,
    X"00000041" AFTER 375 ns;
    op <= "0000",
    "0010" AFTER 205 ns,
    "1001" AFTER 375 ns;

--        wait; -- will wait forever
--     END PROCESS tb;
  --  End Test Bench 

  END;

