-- ALU with generics, lab1 4 downto 0
library IEEE;
use IEEE.std_logic_1164.all;


entity ALU_32bit is
	Port(
		X0: in std_logic_vector(31 downto 0);
		X1: in std_logic_vector(31 downto 0);
		op: in std_logic_vector(4 downto 0);
		C:  out std_logic;
		V:  out std_logic;
		F: out std_logic_vector(31 downto 0)
		);
end ALU_32bit;

architecture Behavioral of ALU_32bit is 

	component logic_circuit32
		Port(
			  x, y : in std_logic_vector(31 downto 0);
			  S : in std_logic_vector(1 downto 0);
			  A : out std_logic_vector(31 downto 0));
	end component;
	
	component the_Rca_sub_32Bits
		port(
			X : in  std_logic_vector(31 downto 0);
			Y : in  std_logic_vector(31 downto 0);
			operation: in std_logic_vector(4 downto 0);
			Cout : out  std_logic;
			Vout : out  std_logic;
			result : out std_logic_vector(31 downto 0)
		);
		 
	end component;	
	
	component twotooneMUX
		port(
			s:in std_logic;
			In0:in std_logic_vector(31 downto 0);
			In1:in std_logic_vector(31 downto 0);
			Z:out std_logic_vector(31 downto 0));
	end component;
	
	signal out1, out2 : std_logic_vector(31 downto 0);
	
begin	
	LC: logic_circuit32
		Port map(
			x => X0,
			y => X1,
			S => op(2 downto 1),
			A => out2
		);
		
	RCAS: the_Rca_sub_32Bits
		Port map(
			X => X0,
			Y => X1,
			operation => op,
			Cout => C,
			Vout => V,
			result => out1
		);
		
	mux21 : twotooneMUX
		Port map(
			s => op(3),
			In0 => out1,
			In1 => out2,
			Z => F
		);
end Behavioral;
	