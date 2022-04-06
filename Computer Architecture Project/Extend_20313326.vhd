library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Extend is
Port ( DR : in  STD_LOGIC_VECTOR (4 downto 0);
       SB : in  STD_LOGIC_VECTOR (4 downto 0);
       extension : out  STD_LOGIC_VECTOR (31 downto 0));
end Extend;

architecture Behavioral of Extend is

begin
    extension(31 downto 10) <= "0000000000000000000000" when (DR(4)='0') else "1111111111111111111111";
    extension(9 downto 5) <= DR;   
    extension(4 downto 0) <= SB;

end Behavioral;