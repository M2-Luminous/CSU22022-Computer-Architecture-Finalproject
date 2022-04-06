library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY twotooneMUX_tb IS
END twotooneMUX_tb;

ARCHITECTURE behavior OF twotooneMUX_tb IS 

COMPONENT twotooneMUX
  PORT(
       s:in std_logic;
       In0:in std_logic_vector(31 downto 0);
       In1:in std_logic_vector(31 downto 0);
       Z:out std_logic_vector(31 downto 0)
       );
END COMPONENT;

   --Inputs
   signal s : std_logic := '0';
   signal in0 : std_logic_vector(31 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');

   --Outputs
   signal z : std_logic_vector(31 downto 0) := (others => '0');

BEGIN
 
   -- Instantiate the Unit Under Test (UUT)
   uut: twotooneMUX PORT MAP (
          s => s,
          in0 => in0,
          in1 => in1,
          z => z
        );
        
in0 <= "00000000000000000000000000000001";
in1 <= "00000000000000000000000000000010";

   stim_proc: process
   begin		

      wait for 10 ns;	
      s <= '0';

      wait for 10 ns;	
      s <= '1';
     
 --     wait;
   end process;

END;
