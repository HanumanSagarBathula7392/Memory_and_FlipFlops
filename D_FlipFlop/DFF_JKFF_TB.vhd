library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.finish;


entity DFF_JKFF_TB is
--  Port ( );
end DFF_JKFF_TB;

architecture Behavioral of DFF_JKFF_TB is
signal D:  std_logic;
signal SET,RESET,CLK:std_logic:='0';
signal Q,Qbar: std_logic:='0';

begin
UUT:entity work.DFF_JKFF(Behavioral) 
port map(D=>D,SET=>SET,RESET=>RESET,CLK=>CLK,Q=>Q,Qbar=>Qbar);

CLK_PROC: process
begin
CLK<= not CLK after 10ns;
wait for 10 ns;
end process CLK_PROC;

STIM: process
begin
D<='1'; wait for 25ns;
D<='0'; wait for 30ns;
SET<='1';RESET<='0';wait for 25ns;
SET<='0';D<='0'; wait for 30ns;
D<='1'; wait for 25ns;
RESET<='1';wait for 30ns;
RESET<='0';D<='1'; wait for 30ns;
SET<='0';RESET<='1';wait for 20ns;
finish;
end process STIM;
end Behavioral;

