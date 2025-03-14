--Designed a single port RAM which can be easily increase memory size and data width from the Test Bench
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use work.MEMORY_PACK.all;

entity SPRAM is
GENERIC(DA:INTEGER:=5;DW:INTEGER:=4);
Port ( ADDR: IN std_logic_vector(DA-1 DOWNTO 0);
       RD,WR:IN std_logic;
       D_IN:IN std_logic_vector(DW-1 DOWNTO 0);
       D_OUT:OUT std_logic_vector(DW-1 DOWNTO 0);
       CLK,RST:IN std_logic
      );
end SPRAM;

architecture STR of SPRAM is
SIGNAL RAM:RAM_LOC(0 TO 2**DA-1)(DW-1 DOWNTO 0);
begin
    process (CLK,RST) begin
        if (RST = '1') then
            if(rising_edge(CLK)) then
            if(WR='1') then 
                RAM(to_integer(unsigned(ADDR))) <= D_IN;
            elsif(RD='1') then 
                D_OUT <= RAM(to_integer(unsigned(ADDR)));
            else
                D_OUT <= (others=>'0');
            end if;
            end if;
         else
            RAM <=(others=>(others=>'0'));
            D_OUT <= (others=>'0');
         end if;
    end process;
end STR;