library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity processor_tb is
end processor_tb;

architecture Behavioral of processor_tb is

-- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT processor
    PORT(
         Clk : IN  std_logic;
         reset : IN  std_logic
        );
    END COMPONENT;
    
    --Inputs
   signal Clk : std_logic := '0';
   signal reset : std_logic := '0';

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
begin
-- Instantiate the Unit Under Test (UUT)
   uut: processor PORT MAP (
          Clk => Clk,
          reset => reset
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
-- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
      wait for 1000 ns;	
		reset <= '0';
      wait;
   end process;

end Behavioral;