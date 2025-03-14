
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use work.MEMORY_PACK.all;

entity DPRAM is
GENERIC(DA:INTEGER:=4;DW:INTEGER:=3;DS:INTEGER:=31);
Port ( ADDRA,ADDRB: IN std_logic_vector(DA DOWNTO 0);
       WEA,WEB:IN std_logic;
       ENA,ENB:IN std_logic;
       MEM_RST,RSTA,RSTB:IN std_logic;
       DINA,DINB:IN std_logic_vector(DW DOWNTO 0);
       DOUTA,DOUTB:OUT std_logic_vector(DW DOWNTO 0);
       CLKA,CLKB:IN std_logic
      );
end DPRAM;

architecture STR of DPRAM is
SIGNAL DPRAM:RAM_LOC(0 TO DS)(DW DOWNTO 0):= (others => (others => '0'));
begin
    

    process (CLKA,CLKB,MEM_RST) begin
        if (MEM_RST = '1') then 
            if(rising_edge(CLKA)) then
                if(RSTA='1' and ENA='1') then
                        if(WEA='1') then 
                            DPRAM(to_integer(unsigned(ADDRA))) <= DINA;
                        else
                            DOUTA <= DPRAM(to_integer(unsigned(ADDRA)));
                        end if;
                else
                    DOUTA <= (others => '0');
                end if;
            end if;
            if(rising_edge(CLKB)) then
                if(RSTB='1' and ENB='1') then
                        if(WEB='1') then 
                            DPRAM(to_integer(unsigned(ADDRB))) <= DINB;
                        else
                            DOUTB <= DPRAM(to_integer(unsigned(ADDRB)));
                        end if;
                else
                     DOUTB <= (others => '0');
                end if;
            end if;
        else
            DPRAM <= (others => (others => '0'));
            DOUTA <= (others => '0');
            DOUTB <= (others => '0');
        end if;   
    end process;
end STR;
