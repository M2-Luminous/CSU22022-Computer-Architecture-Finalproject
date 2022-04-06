library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rca_32bit_TB is
end entity;

architecture Behavioral of rca_32bit_TB is

	component rca_32bit
		port(A,B  : in  std_logic_vector(31 downto 0);
		     Sum  : out std_logic_vector(31 downto 0);
			 Cin :in std_logic;
		     Cout : out std_logic;
			 Vout : out std_logic);
	end component;
	
	signal A, B, SUM : std_logic_vector(31 downto 0);
	signal Cin : std_logic := '0';
	signal Cout            : std_logic;
	signal Vout            : std_logic;

begin
	--Device Under Test
	DUT : rca_32bit port map(
	A => A,
	B => B,
	Cin => Cin,
	Cout => Cout,
	Vout => Vout,
	Sum => Sum
	);
	
	STIM : process
	begin
		A <= x"10101010";
		B <= x"11111111";
		Cin <= '1';
		wait for 10ns;
		
		A <= x"01010101";
		B <= x"11110000";
		Cin <= '1';
		
	wait;
	
	end process;
end Behavioral;