LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;
use  ieee.numeric_std;
use std.textio.all;


ENTITY filter IS
PORT ( CLK,rst: IN std_logic;
      datao: OUT std_logic_vector(7 downto 0);
      cou : OUT INTEGER;
      add : OUT std_logic_vector(7 downto 0));
END filter;

architecture myFilter of filter is
  type myarray is array (0 to 7) of std_logic_vector(7 downto 0);
  
  component ram is 
    PORT ( In_Address: IN std_logic_vector(7 DOWNTO 0);
       IN_Out_Data: IN std_logic_vector(7 DOWNTO 0);--out
       ou:out std_logic_vector(7 DOWNTO 0);
       EN,RW: IN std_logic;
       CLK,rst : IN std_logic);
  END component;
  
  
  procedure  filtering(data: IN myarray;
                        middlein : IN std_logic_vector(7 downto 0);--
                        middle : OUT std_logic_vector(7 downto 0))is
  variable temp : std_logic_vector(7 downto 0):=X"00";
  variable vary : std_logic_vector(7 downto 0);
  begin
    for i in 0 to 7 loop
      temp := temp + data(i); 
    end loop;
    temp := to_stdlogicvector(to_bitvector(temp) sra 3) ;
    if middlein>temp then--
      vary := middlein - temp;--
    else 
      vary := temp - middlein;--
    end if;
    if(vary > X"70")then
      middle := to_stdlogicvector(to_bitvector(middlein+temp) sra 1) ;
    else middle := middlein;
    end if;
  end filtering ;
  
  signal datas : myarray;
  signal EN:  std_logic:='0';
  signal RW:  std_logic:='0';
  signal data :std_logic_vector(7 downto 0):= X"00";
  signal addsig :std_logic_vector(7 downto 0);
  signal dataout :std_logic_vector(7 downto 0):= X"00";
  signal inram :std_logic_vector(7 downto 0):= X"00";
  begin
      
      myRAM: ram port map(addsig,inram,data,EN,RW,clk,rst);
      
  process(CLK)
    variable address :std_logic_vector(7 downto 0):=X"00";
    variable addtemp :std_logic_vector(7 downto 0):= X"00";
    variable count :INTEGER:=0;
    variable middle : std_logic_vector(7 downto 0);
    variable middleout : std_logic_vector(7 downto 0):=X"00";
    variable miAdd: std_logic_vector(7 downto 0):=X"00";
    begin
      
      if (CLK'event and CLK = '1')then
        
        if(count = 0  )then
          address := addtemp;
          EN <='1';
          RW <='1';
         -- datas(count)<=data;
          count := count+1;
        elsif(count = 9)then
          count:= count+1;
          filtering(datas,middle,middleout);
          inram <= middleout;
          address:= miAdd;
          RW<='0';
        elsif(count = 5)then --3
          middle:=data;
          miAdd:=address;--*
          address := address+1;
          count := count+1;
        elsif(count>0 and count<9 and count/=5)then--3
          datas(count-1)<=data;--count
          address := address+1;
          count := count+1;
        elsif(count =10)then
          addtemp:=addtemp+1;
          count:=0;
          EN<='0';
        end if;
        datao <= middleout;
        addsig <=address;
        cou <= count;
        add<=miAdd;
      end if; 
    end process;
end myFilter;
