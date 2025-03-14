library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.finish;

entity SPRAM_SIM is
--  Port ( );
end SPRAM_SIM;

architecture STR of SPRAM_SIM is

  --The below all statements creates necwssary constant signals for this Test-Bench
  constant DA: integer:=5;
  constant DW: integer:=4;
  constant clk_period : time := 20 ns;-- Clock period definitions
  
  --The below all statements creates necwssary intermediate signals for this Test-Bench
  signal CLK,RST : std_logic := '0';
  signal WR,RD : std_logic := '0';
  signal ADDR : std_logic_vector(DA-1 downto 0);
  signal D_IN : std_logic_vector(DW-1 downto 0) := (others => '0');
  signal D_OUT : std_logic_vector(DW-1 downto 0) := (others => '0');
 
begin


RAM_TB: entity work.SPRAM--Instantiates and assigns ports  
  generic map (da=>da,dw => dw)
    port map (clk => clk,rst=>rst,ADDR =>ADDR,RD=>RD,WR=>WR,D_in => D_in,D_out => D_out);

  clk_proc : process-- Clock process definitions
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  stim_proc: process-- Stimulus process
  begin
    wait for clk_period;
    --The below all statements assigns the data values for enable and inputs. 
    wr <= '1';
    rst <= '1';
    Addr<= "00001";
    d_in <= "0010";
    wait for clk_period*2;
    wr <= '0';
    rd <= '1';
    Addr<= "00001";
    wait for clk_period*2;
    wr <= '1';
    Addr<= "00101";
    d_in <= "0101";
    wait for clk_period*2;
    wr <= '0';
    rd <= '1';
    Addr<= "00101";
    wait for clk_period*2;
    wr <= '0';
    rd <= '0';
    wait for clk_period*2;
    rst <='0';
    wait for clk_period*3;
    finish;
  end process;
end str;
