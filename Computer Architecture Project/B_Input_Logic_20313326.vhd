library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity B_Input_Logic is

   port( A: in std_logic_vector(31 downto 0);
		 C : in std_logic_vector(1 downto 0);
		 B : out std_logic_vector(31 downto 0));
end B_Input_Logic;
   
architecture Behavioral of B_Input_Logic is
   begin
   
   B <=    x"00000000" when C = "00" else
           A when C = "01" else
           (not A) when C = "10" else
           "11111111111111111111111111111111" when C = "11"; 
end Behavioral;