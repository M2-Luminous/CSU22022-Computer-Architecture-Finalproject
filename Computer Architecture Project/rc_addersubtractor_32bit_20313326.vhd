
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity the_Rca_sub_32Bits is

	port(
	     X : in  std_logic_vector(31 downto 0);
		 Y : in  std_logic_vector(31 downto 0);
		 operation: in std_logic_vector(4 downto 0);
		 Cout : out  std_logic;
		 Vout : out  std_logic;
	     result : out std_logic_vector(31 downto 0)
		);
		 
end entity;


architecture Behavioral of the_Rca_sub_32Bits is

	component B_Input_Logic
		port( 
              A: in std_logic_vector(31 downto 0);
		      C : in std_logic_vector(1 downto 0);
		      B : out std_logic_vector(31 downto 0)
	        ); 
	end component;
	
	
	component rca_32bit
		port(A,B  : in  std_logic_vector(31 downto 0);
			Sum  : out std_logic_vector(31 downto 0);
			Cin : in std_logic;
			Cout : out std_logic;
			Vout : out std_logic);
	end component;
	
	

	signal B_out0 : std_logic_vector(31 downto 0);

	
	begin
		B_input : B_input_logic port map(
		C => operation(2 downto 1),
		A => Y,
		B => B_out0
	);
       
	rca : rca_32bit port map(
			A => X,
			B => B_out0,
			Cin => operation(0),
			Cout => Cout,
			Vout => vout,
			Sum => result
		);
   
end Behavioral;