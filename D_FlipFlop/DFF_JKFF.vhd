library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DFF_JKFF is
port (D: in std_logic;
      SET,RESET,CLK:in std_logic;
      Q,Qbar:out std_logic);
end DFF_JKFF;

architecture Behavioral of DFF_JKFF is
signal Dbar: std_logic;
begin
Dbar<= not(D);
JKFF_INST:entity work.JK_FF(Behavioral) 
port map(J=>D,K=>Dbar,SET=>SET,RESET=>RESET,CLK=>CLK,Q=>Q,Qbar=>Qbar);
end Behavioral;
