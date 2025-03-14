
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.finish;

entity DPRAM_SIM is
--  Port ( );
end DPRAM_SIM;

architecture STR of DPRAM_SIM is

  --The below all statements creates necwssary constant signals for this Test-Bench
  constant DA: integer:=4;
  constant DW: integer:=3;
  constant DS: integer:=31;
  constant clk_period : time := 20 ns;-- Clock period definitions
  
  --The below all statements creates necwssary intermediate signals for this Test-Bench
  signal CLKA,CLKB : std_logic := '0';
  signal ADDRA,ADDRB : std_logic_vector(DA downto 0);
  signal WEA,WEB : std_logic := '0';
  signal ENA,ENB: std_logic;
  signal DINA,DINB : std_logic_vector(DW downto 0);
  signal MEM_RST,RSTA,RSTB: std_logic;
  signal DOUTA,DOUTB : std_logic_vector(DW downto 0) ;
 
begin

RAM_TB: entity work.DPRAM--Instantiates and assigns ports  
  generic map (da=>da,dw => dw, ds => ds)
    port map (clka => clka,clkb => clkb,ADDRA =>ADDRA,ADDRB =>ADDRB,WEA=>WEA,WEB=>WEB,ENA=>ENA,ENB=>ENB,DINA => DINA,DINB => DINB,
    MEM_RST=>MEM_RST,RSTA=> RSTA,RSTB=> RSTB,DOUTA => DOUTA,DOUTB => DOUTB);

  clka_proc : process-- ClockA process definitions
  begin
    clka <= '0';
    wait for clk_period/4;
    clka <= '1';
    wait for clk_period/4;
  end process;
  
  clkb_proc : process-- ClockB process definitions
  begin
    clkb <= '0';
    wait for clk_period/2;
    clkb <= '1';
    wait for clk_period/2;
  end process;

  stim_proc: process-- Stimulus process
  begin
  --Initialization of RESET signals, Input Data and Addresses
    DINA<="0101";
    DINB<="1010";
    ADDRA <= "00000";
    ADDRB <= "00001";
    RSTA <= '0';
    RSTB <= '0';
    MEM_RST <= '0';
    
    wait for clk_period;
    
    RSTA <= '1';
    RSTB <= '1';
    MEM_RST <= '1';
    
    wait for clk_period;
    --The below all statements assigns the data values for enable and inputs. 
    
    ENA <= '1';
    ENB <= '1';
    WEA <= '1';
    WEB <= '1';
    
    wait for clk_period*2;

    WEA <= '0';
    WEB <= '0';
    
    wait for clk_period*2;
    MEM_RST <= '0';
    wait for clk_period*2;
    finish;
  end process;
end str;

