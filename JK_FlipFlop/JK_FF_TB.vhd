library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.env.finish;

entity JK_FF_TB is
--  Port ( );
end JK_FF_TB;

architecture Behavioral of JK_FF_TB is
signal J,K:  std_logic;
signal SET,RESET,CLK:std_logic:='0';
signal Q,Qbar: std_logic:='0';

begin
UUT:entity work.JK_FF(Behavioral) 
port map(J=>J,K=>K,SET=>SET,RESET=>RESET,CLK=>CLK,Q=>Q,Qbar=>Qbar);

CLK_PROC: process
begin
CLK<= not CLK after 10ns;
wait for 10 ns;
end process CLK_PROC;

STIM: process
begin
J<='1';K<='0'; wait for 25ns;
J<='0';K<='1'; wait for 25ns;
J<='0';K<='0'; wait for 30ns;
J<='0';K<='1'; wait for 25ns;
SET<='1';RESET<='0';wait for 25ns;
SET<='0';RESET<='0';J<='0';K<='1'; wait for 30ns;
J<='1';K<='0'; wait for 30ns;
SET<='0';RESET<='1';wait for 20ns;
SET<='0';RESET<='0';wait for 10ns;
SET<='0';RESET<='0';J<='1';K<='1'; wait for 30ns;
SET<='0';RESET<='0';J<='1';K<='1'; wait for 30ns;
J<='0';K<='0'; wait for 25ns;
J<='0';K<='1'; wait for 30ns;
finish;
end process STIM;
end Behavioral;
