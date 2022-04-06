library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity functional_unit is
	Port(
		S : in STD_LOGIC_VECTOR(4 downto 0);
		A, B : in STD_LOGIC_VECTOR(31 downto 0);
		N, Z, V, C : out STD_LOGIC;
		F : out STD_LOGIC_VECTOR(31 downto 0)
	);
end functional_unit;

architecture Behavioral of functional_unit is

	--2 to 1 mux
	Component twotooneMUX
		Port(
			In0, In1 : in STD_LOGIC_VECTOR(31 downto 0);
			S : in STD_LOGIC;
			Z : out STD_LOGIC_VECTOR(31 downto 0)
		);
	End Component;
	--shifter
	Component Shifter_unit
		Port(
			B : in STD_LOGIC_VECTOR(31 downto 0);
			S : in STD_LOGIC_VECTOR(1 downto 0);
			IL, IR : in STD_LOGIC;
			H : out STD_LOGIC_VECTOR(31 downto 0)
		);
	End Component;
	--alu
	Component ALU_32bit
		Port(
			X0: in std_logic_vector(31 downto 0);
            X1: in std_logic_vector(31 downto 0);
            op : in std_logic_vector(4 downto 0);
            C, V : out std_logic;
            F: out std_logic_vector(31 downto 0)
		);
	End Component;
	
	signal H, ALU_in, MUX : STD_LOGIC_VECTOR(31 downto 0);

begin
	shifter00: Shifter_unit PORT MAP(
		B => B,
		S => S(3 downto 2),
		IL => '0',
		IR => '0',
		H => H
	);
	
	mux_2_100: twotooneMUX PORT MAP(
		In0 => ALU_in,
		In1 => H,
		S => S(4),
		Z => MUX
	);
	
	alu: ALU_32bit PORT MAP(
		X0 => A,
		X1 => B,
		op => S(4 downto 0),
		V => V,
		C => C,
		F => ALU_in
	);
	
	F <= MUX;
	N <= MUX(31);
	Z <= (MUX(31) or MUX(30) or MUX(29) or MUX(28) or MUX(27) or MUX(26) or MUX(25) or MUX(24) or MUX(23) or MUX(22) or MUX(21) or MUX(20) or MUX(19) or MUX(18) or MUX(17) or MUX(16)
                  or MUX(15) or MUX(14) or MUX(13) or MUX(12) or MUX(11) or MUX(10) or MUX(9) or MUX(8) or MUX(7) or MUX(6) or MUX(5) or MUX(4) or MUX(3) or MUX(2) or MUX(1) or MUX(0));

end Behavioral;