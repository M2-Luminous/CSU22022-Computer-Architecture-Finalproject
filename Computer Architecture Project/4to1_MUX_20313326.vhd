library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
   port( in0 : in std_logic;
         in1 : in std_logic;
		 in2 : in std_logic;
		 in3 : in std_logic; 
		 s : in std_logic_vector(1 downto 0);
		 z : out std_logic);
   end mux4to1;
   
   architecture Behavioral of mux4to1 is
   begin
   z <= in0 after 5 ns when s = "00" else
        in1 after 5 ns when s = "01" else
		in2 after 5 ns when s = "10" else
		in3 after 5 ns when s = "11" else
		'0' after 5 ns;
end Behavioral;