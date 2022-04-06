library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplexer3to1 is
	Port(
		In0, In1, In2 : in STD_LOGIC;
		S : in std_logic_vector(1 downto 0);
		Z : out STD_LOGIC
		);
end multiplexer3to1;

architecture Behavioral of multiplexer3to1 is

begin
	Z <= 	In0 when S = "00" else
			In1 when S = "01" else
			In2 when S = "10" else
			'0';

end Behavioral;