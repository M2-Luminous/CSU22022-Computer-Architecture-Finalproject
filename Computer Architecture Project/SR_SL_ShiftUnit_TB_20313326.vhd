LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shifter_TB IS
END shifter_TB;
 
ARCHITECTURE behavior OF shifter_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shifter_unit
    PORT(
         B : IN  std_logic_vector(31 downto 0);
         S : IN  std_logic_vector(1 downto 0);
         IL : IN  std_logic;
         IR : IN  std_logic;
         H : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');
   signal IL : std_logic := '0';
   signal IR : std_logic := '0';

 	--Outputs
   signal H : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shifter_unit PORT MAP (
          B => B,
          S => S,
          IL => IL,
          IR => IR,
          H => H
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
		B <= "00100000001100010011001100100110";
		
		wait for 10ns;
		S <= "00";
		
		wait for 10ns;
		S <= "01";

		wait for 10ns;
		S <= "10";

      wait;
   end process;

END;