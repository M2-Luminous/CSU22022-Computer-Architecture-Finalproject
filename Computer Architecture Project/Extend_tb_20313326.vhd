library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Extend_tb is
end Extend_tb;

architecture Behavioral of Extend_tb is

COMPONENT Extend
Port ( DR : in  STD_LOGIC_VECTOR (4 downto 0);
       SB : in  STD_LOGIC_VECTOR (4 downto 0);
       extension : out  STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

   --Inputs
   signal DR : std_logic_vector(4 downto 0) := (others => '0');
   signal SB : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal extension : std_logic_vector(31 downto 0);

   constant delay: time := 10 ns;

begin
   uut: Extend PORT MAP (
          DR => DR,
          SB => SB,
          extension => extension
        );

   stim_proc: process
   begin
   
   DR <= "00110";
   SB <= "11111";
   
   wait for delay;
   
   DR <= "11111";
   SB <= "10101";
   
   wait for delay;
   wait;
   end process;
   
end Behavioral;