LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY functional_unit_tb IS
END functional_unit_tb;
 
ARCHITECTURE behavior OF functional_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT functional_unit
    PORT(
        S : in STD_LOGIC_VECTOR(4 downto 0);
		A, B : in STD_LOGIC_VECTOR(31 downto 0);
		N, Z, V, C : out STD_LOGIC;
		F : out STD_LOGIC_VECTOR(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic_vector(4 downto 0) := (others => '0');
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal N : std_logic;
   signal Z : std_logic;
   signal V : std_logic;
   signal C : std_logic;
   signal F : std_logic_vector(31 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: functional_unit PORT MAP (
          S => S,
          A => A,
          B => B,
          N => N,
          Z => Z,
          V => V,
          C => C,
          F => F
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		A <= "00000000000000000000000000000000";
		B <= "00100000001100010011001100100110";
		
		wait for 10ns;
		S <= "00000";
		
		wait for 10ns;
		S <= "00001";
		
		wait for 10ns;
		S <= "00010";
		
		wait for 10ns;
		S <= "00011";
		
		wait for 10ns;
		S <= "00100";
		
		wait for 10ns;
		S <= "00101";
		
		wait for 10ns;
		S <= "00110";
		
		wait for 10ns;
		S <= "00111";
		
		wait for 10ns;
		S <= "01000";

		wait for 10ns;
		S <= "01010";

		wait for 10ns;
		S <= "01100";
		
		wait for 10ns;
		S <= "01110";
		
		wait for 10ns;
		S <= "10000";
		
		wait for 10ns;
		S <= "10100";
		
		wait for 10ns;
		S <= "11000";
		
		wait;
   end process;

END;