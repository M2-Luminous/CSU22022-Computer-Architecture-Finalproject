library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity reg32 is
  port(D:in std_logic_vector(31 downto 0);
       load, Clk:in std_logic;
       Q:out std_logic_vector(31 downto 0));
end reg32;

architecture Behavioral of reg32 is

begin

process(Clk)
begin
  if Clk'event and Clk='1' then
    if load='1' then
      Q<=D;
    end if;
  end if;
end process;

end Behavioral;