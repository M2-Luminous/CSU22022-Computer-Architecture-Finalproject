library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CAR_tb is
end CAR_tb;

architecture Behavioral of CAR_tb is
component CAR 
Port ( clock : in std_logic;
        load : in std_logic;
        reset : in std_logic;
        input : in std_logic_vector (16 downto 0);
        addr_out : out std_logic_vector (16 downto 0));
end component;

	signal clock: std_logic;
	signal load: std_logic;
	signal reset: std_logic;
	signal input: std_logic_vector (16 downto 0);
	signal addr_out: std_logic_vector (16 downto 0);
	constant delay: time := 485 ns;


begin
 uut: CAR port map ( clock => clock,
                     load => load,
                     reset => reset,
                     input => input,
                     addr_out => addr_out );
                     
                     
 stimulus: process
  begin       
  
	clock <= '0';
	wait for delay;
  
	--initialize and use reset
	reset <= '1';
	load <= '0';
	input <= "00000000000000000";
   
	clock <= '1';
	wait for delay; --by this point, the output is all zeros, since reset = 1 (970 ns).
  

	clock <= '0';
	wait for delay;
	
	reset <= '0'; --set back to normal
	load <= '1';
	input <= "00000000001111111";
   
	clock <= '1';
	wait for delay; --by this point, the output is the last input since load = 1.
  

	clock <= '0';
	wait for delay;
  
	load <= '0';
	input <= "00000000000000000";
   
	clock <= '1';
	wait for delay; -- by this point, the output will be the last output + 1 i.e. 00000000010000000

	wait;
  
	end process;           
end Behavioral;