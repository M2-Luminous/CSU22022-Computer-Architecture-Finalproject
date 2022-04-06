library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
ENTITY B_Input_Logic_tb IS

END B_Input_Logic_tb;
 
ARCHITECTURE behavior OF B_Input_Logic_tb IS 
COMPONENT B_Input_Logic
    port( A: in std_logic_vector(31 downto 0);
		  C : in std_logic_vector(1 downto 0);
		  B : out std_logic_vector(31 downto 0)
	    );   
END COMPONENT;

signal A : std_logic_vector(31 downto 0) := (others => '0');
signal C : std_logic_vector(1 downto 0) := (others => '0');
signal B  : std_logic_vector(31 downto 0) := (others => '0');

BEGIN
   uut: B_Input_Logic PORT MAP 
       (  A => A,
		  C => C,
		  B => B
        );	
   stim_proc: process
   begin 
      A <= "00100000001100010011001100100110";	  
      wait for 10 ns; 
      C <= "00";
      wait for 10 ns; 
      C <= "01";	  
	  wait for 10 ns; 
      C <= "10";
      wait for 10 ns; 
      C <= "11";
      wait;
    end process;
end behavior;