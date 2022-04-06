library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit_32bit_tb is
end logic_circuit_32bit_tb;

architecture Behavioral of logic_circuit_32bit_tb is
    COMPONENT logic_circuit32
    PORT(
       x, y : in std_logic_vector(31 downto 0);
       S : in std_logic_vector(1 downto 0);
       A : out std_logic_vector(31 downto 0));
    END COMPONENT;
    
   --Inputs
   signal x : std_logic_vector(31 downto 0) := (others => '0');
   signal y : std_logic_vector(31 downto 0) := (others => '0');
   signal S : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
 
   begin
   -- Instantiate the Unit Under Test (UUT)
   uut: logic_circuit32 PORT MAP (
          x => x,
          y => y,
          S => S,
          A => A
   );

   x <= "00000000000000000000000000000000";
   y <= "11111111111111111111111111111111";
   
   stim_proc: process
   begin		

      wait for 10 ns;
        S <= "00";
        
      wait for 10 ns;	
        S <= "01";
        
      wait for 10 ns;
        S <= "10";
        
      wait for 10 ns;	
        S <= "11";
     
   end process;

end Behavioral;