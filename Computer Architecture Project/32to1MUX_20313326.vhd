library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity thirtytwotooneMUX is
	Port(In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31:in std_logic_vector(31 downto 0);
		 S:in std_logic_vector(4 downto 0);
		 Z:out std_logic_vector(31 downto 0));
end thirtytwotooneMUX;

architecture Behavioral of thirtytwotooneMUX is
begin
Z<=In0 after 5 ns when S = "00000" else
   In1 after 5 ns when S = "00001" else
   In2 after 5 ns when S = "00010" else
   In3 after 5 ns when S = "00011" else
   In4 after 5 ns when S = "00100" else
   In5 after 5 ns when S = "00101" else
   In6 after 5 ns when S = "00110" else
   In7 after 5 ns when S = "00111" else
   In8 after 5 ns when S = "01000" else
   In9 after 5 ns when S = "01001" else
   In10 after 5 ns when S = "01010" else
   In11 after 5 ns when S = "01011" else
   In12 after 5 ns when S = "01100" else
   In13 after 5 ns when S = "01101" else
   In14 after 5 ns when S = "01110" else
   In15 after 5 ns when S = "01111" else
   In16 after 5 ns when S = "10000" else
   In17 after 5 ns when S = "10001" else
   In18 after 5 ns when S = "10010" else
   In19 after 5 ns when S = "10011" else
   In20 after 5 ns when S = "10100" else
   In21 after 5 ns when S = "10101" else
   In22 after 5 ns when S = "10110" else
   In23 after 5 ns when S = "10111" else
   In24 after 5 ns when S = "11000" else
   In25 after 5 ns when S = "11001" else
   In26 after 5 ns when S = "11010" else
   In27 after 5 ns when S = "11011" else
   In28 after 5 ns when S = "11100" else
   In29 after 5 ns when S = "11101" else
   In30 after 5 ns when S = "11110" else
   In31 after 5 ns when S = "11111" else
	 "00000000000000000000000000000000"after 5ns;
end Behavioral;