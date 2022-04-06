
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
--  Port ( );
  port(A  : in  std_logic;
       B  : in  std_logic;
       Cin : in  std_logic;
	   Sum  : out std_logic;
	   Cout : out std_logic);
end full_adder;

architecture Behavioral of full_adder is

  component half_adder
		port(A  : in  std_logic;
             B  : in  std_logic;
		     Sum  : out std_logic;
		     Cout : out std_logic);
	end component;
	
	signal ha1_sum : std_logic;
	signal ha1_cout : std_logic;
	signal ha2_cout : std_logic;

begin
    half_adder1 : half_adder port map(A, B, ha1_sum, ha1_cout);
	half_adder2 : half_adder port map(ha1_sum, Cin, Sum, ha2_cout);
	
	Cout <= ha1_cout or ha2_cout;

end Behavioral;
