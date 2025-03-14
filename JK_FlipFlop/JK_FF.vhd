library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FF is
Port (J,K: in std_logic;
      SET,RESET,CLK:in std_logic;
      Q,Qbar:out std_logic);
end JK_FF;

architecture Behavioral of JK_FF is
signal NS,PS: std_logic;
signal JK: std_logic_vector(1 downto 0);
begin

JK <= J & K;
Process(SET,RESET,CLK) is
begin
    if (RESET='1') then
        NS <= '0';
    elsif (SET='1') then
        NS <= '1';
    elsif rising_edge(CLK) then
        case (JK) is
            when "00" => NS <= PS;
            when "10" => NS <= '1';
            when "01" => NS  <= '0';
            when "11" => NS <= not PS;
            when others => NULL;
        end case;
    end if;
end process;

Q<=NS;
Qbar<=not(NS);
PS<=NS;

end Behavioral;

